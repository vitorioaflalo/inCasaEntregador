import 'package:flutter_modular/flutter_modular.dart';
import 'package:incasaentregador/app/models/historico_model.dart';
import 'package:incasaentregador/app/modules/solicitacoesEntrega/helpers/api_solicitacao.dart';
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
  List<HistoricoModel> entrega;

  Future<List<HistoricoModel>> getLista() async {
    entrega = await getSolicitacao();
    return entrega;
  }

  @override
  void initState() {
    super.initState();
    getLista();
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
          'Solicitações',
          style: TextStyle(color: Colors.red[900], fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: LayoutBuilder(
          builder: (_, constrainsts) {
            return FutureBuilder<List<HistoricoModel>>(
              future: getLista(),
              builder: (context, snapshot) {
                if (snapshot.data == null) {
                  return Container(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                } else if (snapshot.data[0].createdAt.isEmpty) {
                  return Center(
                      child: Column(
                    children: [
                      Icon(Icons.dangerous_outlined,
                          color: Colors.red[900], size: 40),
                      Text(
                          'Seu usuário ainda não possui nenhuma solicitação de entrega',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.red[900],
                            fontSize: 20,
                          )),
                    ],
                  ));
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, index) {
                      if (snapshot.data[index].status == null) {
                        return buildContainerButton(snapshot.data[index]);
                      }
                      return null;
                    },
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}
