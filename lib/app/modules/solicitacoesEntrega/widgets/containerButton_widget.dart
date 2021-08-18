import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

buildContainerButton() {
  return GestureDetector(
      onTap: () {
        Modular.to.pushNamed('/start/solicitacoesEntregaDetalhes/');
      },
      child: (Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red[900], width: 1.5)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Data: --/--/----',
                    style: TextStyle(color: Colors.red[900]),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text(
                    'Valor da entrega: R\$ XXX,XX',
                    style: TextStyle(color: Colors.red[900]),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text(
                    'Distância: XXX km',
                    style: TextStyle(color: Colors.red[900]),
                  ),
                ],
              ),
              Icon(
                FontAwesomeIcons.arrowAltCircleRight,
                color: Colors.red[900],
                size: 50,
              )
            ],
          ),
        ),
      )));
}
