import 'package:flutter_test/flutter_test.dart';
import 'package:convertisseur_mesures/converter.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:convertisseur_mesures/converter.dart';

void main() {
  test('Test de conversion kilomètres -> miles', () {
    String resultat = Converter.convertir(100, 'kilomètres', 'miles');
    expect(resultat, '100.0 kilomètres\n est égal à\n62.137 miles');
  });

  test('Test de conversion onces -> kilogrammes', () {
    String resultat = Converter.convertir(10, 'onces', 'kilogrammes');
    expect(resultat, '10.0 onces\n est égal à\n0.283 kilogrammes');
  });

  test('Test de conversion livres -> grammes', () {
    String resultat = Converter.convertir(10, 'livres', 'grammes');
    expect(resultat, '10.0 livres\n est égal à\n4535.92 grammes');
  });

  test('Test de conversion kilomètres -> grammes (incompatible)', () {
    String resultat = Converter.convertir(10, 'kilomètres', 'grammes');
    expect(resultat, 'Cette conversion ne peut être réalisée!!!');
  });
}