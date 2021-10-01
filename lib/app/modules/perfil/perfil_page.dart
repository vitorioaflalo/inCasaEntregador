import 'package:flutter/material.dart';
import 'package:incasaentregador/app/models/model_entregador.dart';
import 'helpers/api_perfil.dart';
import 'widgets/botao.dart';
import 'widgets/text_field.dart';
import 'widgets/text_field2.dart';

class PerfilPage extends StatefulWidget {
  final String title;

  const PerfilPage({Key key, this.title = 'PerfilPage'}) : super(key: key);

  @override
  PerfilPageState createState() => PerfilPageState();
}

class PerfilPageState extends State<PerfilPage> {
  EntregadorModel user;

  Future<EntregadorModel> getLista() async {
    user = await getUser();
    return user;
  }

  @override
  void initState() {
    super.initState();
  }

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
            'Perfil',
            style:
                TextStyle(color: Colors.red[900], fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
          child: FutureBuilder<EntregadorModel>(
              future: getLista(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var data = snapshot.data;
                  return Column(
                    children: [
                      text_field(
                        title: 'Nome Completo',
                        title2: data.nomeCompleto,
                      ),
                      text_field(title: 'Endereço', title2: data.logradouro),
                      text_field(title: 'CPF', title2: data.cPF),
                      text_field(title: 'RG', title2: data.cPF),
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: text_field_meio(
                                  title: 'CNH', title2: data.cNH)),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: text_field_meio(
                                title: 'Tipo', title2: data.tipoCNH),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: text_field_meio(
                                  title: 'Telefone', title2: data.telefone)),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: text_field_meio(
                                title: 'Celular', title2: data.celular),
                          )
                        ],
                      ),
                      text_field(title: 'E-mail', title2: data.email),
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: text_field_meio(
                                  title: 'Banco', title2: data.banco)),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: text_field_meio(
                                title: 'Tipo de Conta/Operação',
                                title2: data.tipoDeConta),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: text_field_meio(
                                  title: 'Agência', title2: data.agencia)),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: text_field_meio(
                                title: 'Nº da conta', title2: data.numero),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0, bottom: 24.0),
                        child: Botao(),
                      ),
                    ],
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              })),
    );
  }
}
