import 'package:flutter_modular/flutter_modular.dart';
import 'package:incasaentregador/app/modules/entregaAtiva/entregaAtiva_store.dart';
import 'package:flutter/material.dart';
import 'package:incasaentregador/app/modules/shared/widgets/checkbox_widget.dart';
import 'package:incasaentregador/app/modules/shared/widgets/textDef_widget.dart';
import 'package:incasaentregador/app/modules/shared/widgets/textFieldDef_widget.dart';

class EntregaAtivaPage extends StatefulWidget {
  final String title;
  const EntregaAtivaPage({Key key, this.title = 'EntregaAtivaPage'})
      : super(key: key);
  @override
  EntregaAtivaPageState createState() => EntregaAtivaPageState();
}

class EntregaAtivaPageState extends State<EntregaAtivaPage> {
  final EntregaAtivaStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shadowColor: Colors.red[900],
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.red[900],
            )),
        title: Text(
          'Resumo da entrega',
          style: TextStyle(color: Colors.red[900], fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              builderText(text: 'Estabelecimento'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderTextField(hint: "Estabelecimento"),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Nome do Cliente'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderTextField(hint: "Nome Completo"),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Endereço'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderTextField(hint: "Endereço"),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Ponto de refêrencia'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderTextField(hint: "Refêrencia"),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Telefone'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderTextField(hint: "(00)00000-0000"),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Celular'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderTextField(hint: "(00)00000-0000"),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Valor do pedido'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderTextField(hint: "R\$00,00"),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Valor da entrega'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderTextField(hint: "R\$00,00"),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Distância a percorrer: XXXX km'),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Método de Pagamento'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderCheckBox(value: true, text: 'Cartão de Débito/Crédito'),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Carga maior que o Habitual?'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderCheckBox(value: true, text: 'Não'),
              Padding(padding: EdgeInsets.only(top: 30)),
              ListTile(
                  title: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 7, 0),
                          child: Container(
                              height: 60.0,
                              child: TextButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.red[900]),
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white)),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Devolução'))))),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                          child: Container(
                              height: 60.0,
                              child: TextButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.green[900]),
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white)),
                                  onPressed: () {},
                                  child: Text('Concluir entrega')))))
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
