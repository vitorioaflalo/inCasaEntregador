import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:incasaentregador/app/models/historico_model.dart';

buildContainerButton(HistoricoModel historicoModel) {
  return (Container(
    decoration:
        BoxDecoration(border: Border.all(color: Colors.red[900], width: 1.5)),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Data: ${historicoModel.createdAt.substring(0, 10)}',
                style: TextStyle(color: Colors.red[900]),
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              Text(
                'Valor da entrega: ${historicoModel.valorDaEntrega}',
                style: TextStyle(color: Colors.red[900]),
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              Text(
                'Distância: ${historicoModel.distancia}',
                style: TextStyle(color: Colors.red[900]),
              ),
            ],
          ),
           GestureDetector(
            onTap: () {
              Modular.to.pushNamed('/start/solicitacoesEntregaDetalhes/',
                  arguments: historicoModel);
            },
          child: Icon(
            FontAwesomeIcons.arrowAltCircleRight,
            color: Colors.red[900],
            size: 50,
          )
           )
        ],
      ),
    ),
  ));
}
