<?php

namespace App\Controller;

use App\Entity\Order;
use App\Form\OrderType;
use App\Repository\ProductRepository;
use App\Service\StripeService;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;

final class OrderController extends AbstractController
{
    #[Route('/order', name: 'app_order')]
    public function index(
        Request $request,
        SessionInterface $session,
        ProductRepository $productRepository,
        StripeService $stripeService
    ): Response {
        $cart = $session->get('cart', []);
        $cartWithData = [];
        $total = 0;

        foreach ($cart as $id => $quantity) {
            $product = $productRepository->find($id);
            if (!$product) continue;

            $cartWithData[] = [
                'product' => $product,
                'quantity' => $quantity
            ];

            $total += $product->getPrice() * $quantity;
        }

        $order = new Order();
        $form = $this->createForm(OrderType::class, $order);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            // Construction des articles pour Stripe
            $lineItems = [];
            foreach ($cartWithData as $item) {
                $lineItems[] = [
                    'price_data' => [
                        'currency' => 'eur',
                        'unit_amount' => $item['product']->getPrice() * 100, // Stripe attend des centimes
                        'product_data' => [
                            'name' => $item['product']->getNom(),
                        ],
                    ],
                    'quantity' => $item['quantity'],
                ];
            }

            $successUrl = $this->generateUrl('app_order_success', [], UrlGeneratorInterface::ABSOLUTE_URL);
            $cancelUrl = $this->generateUrl('app_order_cancel', [], UrlGeneratorInterface::ABSOLUTE_URL);

            $stripeSession = $stripeService->createCheckoutSession($lineItems, $successUrl, $cancelUrl);

            return $this->redirect($stripeSession->url, 303);
        }

        return $this->render('order/index.html.twig', [
            'form' => $form->createView(),
            'total' => $total
        ]);
    }

    #[Route('/order/success', name: 'app_order_success')]
    public function success(): Response
    {
        return $this->render('order/success.html.twig');
    }

    #[Route('/order/cancel', name: 'app_order_cancel')]
    public function cancel(): Response
    {
        return $this->render('order/cancel.html.twig');
    }
}
