<?php

namespace App\Service;

use Stripe\Checkout\Session;
use Stripe\Stripe;

class StripePayment
{

    private $redirecturl; 

    public function __construct(){
       Stripe::setApiKey($_SERVER['STRIPE_SECRET']);
       Stripe::setApiVersion('2025-03-31'); 
    }

    public function startPayment($cart){ 

        //$cartProducts = $cart['cart'];
        //$products = [];

        //foreach ($cartProducts as $value){
           // $productItem = [];
            //$productItem['name'] = $value['product']->getName();
            //$productItem['price'] = $value['product']->getPrice();
            //$productItem['qte'] = $value['quantity'];
            //$products[] = $productItem;
       // }
        
        $session = Session::create([
            'line_items'=>[
                array_map(fn(array $product)=>[
                    'quantity'=> $product['qte'],
                    'price_data' => [
                        'currency' => 'EUR',
                        'product_data' =>[
                            'name' => $product['name']
                        ],
                        'unit_amount' => $product['price']*100
                    ],
                ],$products)
            ],
            'mode'=>'payment',
            'cancel_url'=>'http://127.0.0.1:8000/pay/cancel',
            'success_url' => 'http://127.0.0.1/pay/success',
            'billing_adress_collection' => 'required',
            'metadata' => [
                
            ]
        ]);

        $this->redirectUrl = $session->url;
    }

    public function getStripeRedirectUrl(){
        return $this->redirectUrl;
    }
}