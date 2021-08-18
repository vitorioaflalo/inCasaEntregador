import 'package:flutter_modular/flutter_modular.dart';
import 'package:incasaentregador/app/modules/solicitacoesEntrega/solicitacoesEntrega_store.dart';
import 'package:flutter/material.dart';
import 'package:incasaentregador/app/modules/solicitacoesEntrega/widgets/containerButton_widget.dart';

class SolicitacoesEntregaPage extends StatefulWidget {
  final String title;
  const SolicitacoesEntregaPage(
      {Key key, this.title = 'SolicitacoesEntregaPage'})
      : super(key: key);
  @override
  SolicitacoesEntregaPageState createState() => SolicitacoesEntregaPageState();
}

class SolicitacoesEntregaPageState extends State<SolicitacoesEntregaPage> {
  final SolicitacoesEntregaStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shadowColor: Colors.red[500],
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.red[500],
            )),
        title: Text(
          'Solicitações',
          style: TextStyle(color: Colors.red[500], fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: <Widget>[
              buildContainerButton(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButton(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButton(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButton(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButton(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButton(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButton(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButton(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButton(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButton(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButton(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButton(),
            ],
          ),
        ),
      ),
    );
  }
}
