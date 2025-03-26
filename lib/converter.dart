import 'constants.dart';

class Converter {
  static String convertir(double valeur, String depuis, String vers) {
    int numDepuis = mesuresMap[depuis] ?? 0;
    int numVers = mesuresMap[vers] ?? 0;
    var multiplicateur = formules[numDepuis.toString()][numVers];
    var resultat = valeur * multiplicateur;

    resultat = double.parse(resultat.toStringAsFixed(3));

    if (resultat == 0) {
      return 'Cette conversion ne peut être réalisée!!!';
    } else {
      return '${valeur.toString()} $depuis\n est égal à\n${resultat.toString()} $vers';
    }
  }
}