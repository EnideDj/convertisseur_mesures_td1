# Convertisseur de Mesures - TP N°1

## Description

Ce projet est une application mobile Flutter permettant de convertir des unités de mesure, telles que des distances (kilomètres, miles, mètres), des poids (livres, kilogrammes, grammes), et d'autres unités comme les onces et les pieds. L'application permet à l'utilisateur de saisir une valeur et de sélectionner l'unité de départ ainsi que l'unité d'arrivée pour effectuer la conversion.

### Fonctionnalités principales :
- Conversion des unités de mesure : kilomètres ↔ miles, mètres ↔ pieds, grammes ↔ kilogrammes, et plus encore.
- Interface utilisateur simple et interactive.
- Support de la saisie par l'utilisateur pour entrer la valeur à convertir.
- Conversion basée sur une logique mathématique intégrée via une matrice de conversion.

## Structure du projet

Le projet est divisé en plusieurs fichiers et répertoires pour organiser l'application de manière logique et modulaire.

```env
.
├── lib
│   ├── constants.dart        # Contient les constantes
│   ├── converter.dart       # Contient la logique de conversion
│   ├── main.dart            # Contient le point d’entrée de l'app
│   ├── ui.dart              # Contient l’interface utilisateur 
├── test
│   └── conversion_test.dart # Contient les tests unitaires 
```

## Installation

1. **Clonez le projet** :

   ```bash
   git clone https://github.com/EnideDj/convertisseur_mesures_td1
   cd convertisseur_mesures

2.	Installez les dépendances :
    ```bash
    flutter pub get

3.	Exécutez l’application :
Pour exécuter l’application sur un émulateur ou un appareil physique, utilisez la commande suivante :
    ```bash
    flutter run

4.	Exécutez les tests :
Pour exécuter les tests unitaires, utilisez la commande suivante :
    ```bash
        flutter test


## ENIDE DJENDER - FISA-TI-27 - IMT NORD EUROPE 
