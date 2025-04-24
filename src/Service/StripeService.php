<?php

namespace App\Service;

use Stripe\Stripe;
use Stripe\Checkout\Session;

class StripeService
{
    public function __construct(private string $stripeSecretKey) {}

    public function createCheckoutSession(array $lineItems, string $successUrl, string $cancelUrl): Session
    {
        Stripe::setApiKey($this->stripeSecretKey);

        return Session::create([
            'payment_method_types' => ['card'],
            'line_items' => $lineItems,
            'mode' => 'payment',
            'success_url' => $successUrl,
            'cancel_url' => $cancelUrl,
        ]);
    }
}
