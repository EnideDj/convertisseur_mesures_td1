import 'package:flutter/material.dart';
import 'converter.dart';
import 'constants.dart';

class ConvertisseurPage extends StatefulWidget {
  @override
  _ConvertisseurPageState createState() => _ConvertisseurPageState();
}

class _ConvertisseurPageState extends State<ConvertisseurPage> {
  double _nombreSaisi = 0.0;
  String _uniteDepart = 'mètres';
  String _uniteArrivee = 'kilomètres';
  String _message = '';

  @override
  Widget build(BuildContext context) {
    final TextStyle styleEntree = TextStyle(
      fontSize: 20,
      color: Colors.blue[900],
    );

    final TextStyle styleLabel = TextStyle(
      fontSize: 20,
      color: Colors.grey[700],
    );

    return Scaffold(
      appBar: AppBar(title: Text('Convertisseur de Mesures')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Spacer(),
            Text('Valeur à convertir', style: styleEntree),
            Spacer(),
            TextField(
              keyboardType: TextInputType.number,
              style: styleEntree,
              textAlign: TextAlign.center,
              decoration: InputDecoration(hintText: 'Saisissez la mesure à convertir'),
              onChanged: (texte) {
                var vr = double.tryParse(texte);
                if (vr != null) {
                  setState(() {
                    _nombreSaisi = vr;
                  });
                }
              },
            ),
            Spacer(),
            Text('Depuis', style: styleLabel),
            DropdownButton<String>(
              value: _uniteDepart,
              items: unitesMesures.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _uniteDepart = newValue!;
                });
              },
            ),
            Text('Vers', style: styleLabel),
            DropdownButton<String>(
              value: _uniteArrivee,
              items: unitesMesures.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _uniteArrivee = newValue!;
                });
              },
            ),
            Spacer(flex: 2),
            ElevatedButton(
              onPressed: () {
                if (_nombreSaisi != 0) {
                  setState(() {
                    _message = Converter.convertir(_nombreSaisi, _uniteDepart, _uniteArrivee);
                  });
                }
              },
              child: Text('Convertir', style: styleEntree),
            ),
            Spacer(flex: 2),
            Text(_message, textAlign: TextAlign.center, style: styleLabel),
            Spacer(flex: 8),
          ],
        ),
      ),
    );
  }
}