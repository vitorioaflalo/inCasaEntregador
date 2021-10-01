import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:incasaentregador/app/models/entrega_model.dart';
import 'package:incasaentregador/app/models/historico_model.dart';

buildContainerButtonHistorico2(HistoricoModel historicoModel) {
  var text = historicoModel.razaoSocial;
  return (Container(
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
              Row(
                children: [
                  Text(
                    'Data: ${historicoModel.createdAt.substring(0,10)}',
                    style: TextStyle(color: Colors.red[900]),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.yellow[700],
                    size: 10,
                  ),
                  Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.yellow[700],
                    size: 10,
                  ),
                  Icon(
                    FontAwesomeIcons.star,
                    size: 10,
                  ),
                  Icon(
                    FontAwesomeIcons.star,
                    size: 10,
                  ),
                  Icon(
                    FontAwesomeIcons.star,
                    size: 10,
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              Text(
                 'Status: ${historicoModel.status}',
                style: TextStyle(color: Colors.red[900]),
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              Text(
                'Estabelecimento: ${text.length >24 ? text.substring(0,24) : text}',
                style: TextStyle(color: Colors.red[900]),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Modular.to.navigate('/start/historicoDetalhes/', arguments:historicoModel);
            },
            child: Icon(
              FontAwesomeIcons.arrowAltCircleRight,
              color: Colors.red[900],
              size: 50,
            ),
          )
        ],
      ),
    ),
  ));
}
