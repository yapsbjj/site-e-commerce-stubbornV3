# 🛍️ Stubborn Shop

**Stubborn Shop** est une boutique en ligne dédiée aux sweatshirts tendance.  
Ce projet Symfony 7.2 est conçu pour permettre une gestion simple du catalogue, des utilisateurs, et des commandes.

## 🚀 Technologies

- PHP >= 8.2
- Symfony 7.2
- Doctrine ORM (MariaDB)
- Twig
- Mailtrap (mailing de test)
- Bootstrap via Twig
- Sessions PHP pour le panier

## 📦 Installation

### Prérequis

- PHP 8.2+
- Composer
- MariaDB ou MySQL
- Symfony CLI (optionnel mais pratique)

### Étapes


# 1. Cloner le projet
git clone  https://github.com/yapsbjj/site-e-commerce-stubbornV3
cd stubborn-shop

# 2. Installer les dépendances
composer install

# 3. Créer la base de données
php bin/console doctrine:database:create

# 4. Lancer les migrations
php bin/console doctrine:migrations:migrate

# 5. Charger les jeux d’essai
mysql -u root -p my_shop_dev < data.sql

# 6. Lancer le serveur
symfony server:start
