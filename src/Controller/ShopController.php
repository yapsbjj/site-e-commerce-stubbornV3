<?php

namespace App\Controller;

use App\Repository\ProductRepository;
use App\Entity\Product;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

final class ShopController extends AbstractController
{
    #[Route('/shop', name: 'app_shop', methods: ['GET'])]
    public function index(ProductRepository $productRepository): Response
    {
        return $this->render('shop/index.html.twig', [
            'products' => $productRepository->findAll(),
        ]);
    }

    #[Route('/shop/product/{id}/show', name: 'app_shop_product_show', methods: ['GET'])]
    public function show(Product $product): Response
    {
        return $this->render('shop/show.html.twig', [
            'product' => $product
        ]);
    }
}
