import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'widgets/containerButtonDef_widget.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 100, 30, 30),
          child: LayoutBuilder(
              builder: (_, constraints) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    buildDefContainer(
                      constraints,
                      text: 'Entrega Ativa', rota: '/entregaAtiva/',),
                    Padding(padding: EdgeInsets.only(top: 30)),
                    buildDefContainer(constraints,
                        text: 'Solicitações de Entrega', rota: '/solicitacoesEntrega/'),
                    Padding(padding: EdgeInsets.only(top: 30)),
                    buildDefContainer(constraints,
                        text: 'Histórico', rota: '/historico/'),
                    Padding(padding: EdgeInsets.only(top: 30)),
                    buildDefContainer(constraints,
                        text: 'Relatório de Pagamentos', rota: '/relatorio/'),
                    Padding(padding: EdgeInsets.only(top: 30)),
                  ],
                );
              }

          ),
        ));
  }
}
