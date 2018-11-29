# 😻 MATOURI PROJECT 😻

Dans ce projet, nous devions créer un site de boutique en ligne de photos de chatons. Nous devions utiliser Trello et la méthode Agile, en utilisant le principe des Users stories.

 ## 🛠️ Le site comprend plusieurs fonctionnalités 🛠️

* Une page Boutique affiche les différents produits.
* Les clients peuvent s’inscrire et se loger sur le site, via la gem devise.
* Ils peuvent remplir leur panier et payer la ou les photo(s) avec Stripe.
* Ils peuvent acheter plusieurs exemplaires du même produit dans une même commande.
* Ils reçoivent par email le récapitulatif de leur commande avec la photo du ou des produit(s) (avec Mailjet).
* Nous avons plugger ActiveStorage au site.

## 💾  Quelques features supplémentaires 💾

* Création d’un attribut admin sur le model User qui permet à un utilisateur identifié comme tel de modifier ou éditer un article.
* L'administrateur du site recevra un email pour chaque commande passée par les utilisateurs.
* Possibilité pour un visiteur du site d’avoir un panier de commande (sans pouvoir le valider tant qu'il n'est pas connecté).

## Petites précisions pour faciliter la navigation sur le site

Afin de pouvoir tester correctement toutes les fonctionnalités mises en place sur ce site, voici quelques indications supplémentaires.

### 💵 Paiment via Stripe 💵

Le paiement de nos photos s'effectue via Stripe. Lors de la finalisation de la commande, une pop-up apparaîtra et vous demandera :

1. Une adresse email (il est important de préciser une réelle adresse email pour pouvoir recevoir l'email de confirmation de commande) puis les informations de carte bancaire.
2. Numéro de carte : `4242 4242 4242 4242`
3. MM / AA : `10/20` (ou au moins un mois et une année dans le turfu)
4. CVV : `123` (au moins 3 chiffres mais peu importe lesquels)

### 🤴 Admin 🤴

Afin de tester les fonctions d'édition et de suppression des articles, il sera nécessaire de vous connecter en tant qu'admin.<br/>
Nous avons pensé à tout et avons déjà créé cet utilisateur dont voici les accès :
* Email : admin@outlook.fr
* MDP : merci de prendre contact avec le service client de Matouri pour obtenir ce mot de passe.

## 🌟 Rendu final 🌟

Le site en production se trouve ici 👉 https://matouri.herokuapp.com/

Pour rentrer dans le vif du sujet, merci de suivre les indications ci-dessous :

`$git clone du projet`

`$bundle install`

`$rails db:create`<br/>
`$rails db:migrate`<br/>
`$rails db:seed`

 ## 🍻 L’équipe  🍻

 Ce projet a été réalisé par une partie de la team Welsh (Lille rpz) avec Virginie Valeur Hannebicque, Anaïs Diologeant, Mustapha Ait Ouayhou et Thomas Perus.
