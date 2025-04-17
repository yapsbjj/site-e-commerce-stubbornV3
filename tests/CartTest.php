<?php

namespace App\Tests;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class CartTest extends WebTestCase
{
    public function testAddToCart(): void
    {
        $client = static::createClient();
        
        // On suppose qu'un produit avec l'id 10 existe
        $crawler = $client->request('GET', '/cart/add/10');

        $this->assertResponseIsSuccessful();
        $this->assertStringContainsString('Produit ajouté au panier', $client->getResponse()->getContent());
    }

    public function testCheckout(): void
    {
        $client = static::createClient();

        // On suppose qu'on a déjà un produit dans le panier
        $client->request('GET', '/cart/add/1');

        // Puis on va sur la page de validation de commande
        $crawler = $client->request('GET', '/checkout');

        $this->assertResponseIsSuccessful();
        $this->assertStringContainsString('Commande confirmée', $client->getResponse()->getContent());
    }
}
