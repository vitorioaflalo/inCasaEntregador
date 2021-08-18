import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'config_grafico.dart';
import 'model_grafico.dart';

class Grafico extends StatelessWidget {
  final List<Entregas> data = [
    Entregas(
        entregas: 'Entregas Concluídas: 50',
        numero_entregas: 50,
        barColor: charts.ColorUtil.fromDartColor(Colors.red.shade900)),
    Entregas(
        entregas: 'Devoluções: 5',
        numero_entregas: 5,
        barColor: charts.ColorUtil.fromDartColor(Colors.red.shade900)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Entregas Concluídas  x  Devoluções',
          style: TextStyle(
              color: Colors.red.shade900,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Chart(
            data: data,
          ),
        ),
      ],
    );
  }
}