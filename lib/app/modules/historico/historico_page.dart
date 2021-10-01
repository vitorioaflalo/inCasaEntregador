import 'package:flutter_modular/flutter_modular.dart';
import 'package:incasaentregador/app/models/historico_model.dart';
import 'package:incasaentregador/app/modules/historico/historico_store.dart';
import 'package:flutter/material.dart';
import 'package:incasaentregador/app/modules/historico/widgets/containerButton_widget0.dart';
import 'package:incasaentregador/app/modules/historico/widgets/containerButton_widget1.dart';
import 'package:incasaentregador/app/modules/historico/widgets/containerButton_widget2.dart';
import 'package:incasaentregador/app/modules/historico/widgets/containerButton_widget3.dart';
import 'package:incasaentregador/app/modules/historico/widgets/containerButton_widget4.dart';

import 'package:incasaentregador/app/modules/historico/widgets/containerButton_widget5.dart';

import 'helpers/api_historico.dart';

class HistoricoPage extends StatefulWidget {
  final String title;
  const HistoricoPage({Key key, this.title = 'HistoricoPage'})
      : super(key: key);
  @override
  HistoricoPageState createState() => HistoricoPageState();
}

class HistoricoPageState extends State<HistoricoPage> {
  final HistoricoStore store = Modular.get();
  List<HistoricoModel> entrega;

  Future<List<HistoricoModel>> getLista() async {
    entrega = await getUsers();
    return entrega;
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
          'Histórico de entregas',
          style: TextStyle(color: Colors.red[900], fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: LayoutBuilder(
          builder: (_, constraints) {
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
                            Icon(Icons.dangerous_outlined, color: Colors.red[900], size:40),
                            Text(
                              'Seu usuário ainda não possui nenhuma entrega',
                              textAlign: TextAlign.center,              
                                style: TextStyle(
                                  color: Colors.red[900],
                                  fontSize: 20,
                                  
                                )),
                          ],
                        ));
                  } 
                  else {
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, index) {
                        if (snapshot.data[index].avaliacao == "") {
                          return buildContainerButtonHistorico0(
                           snapshot.data[index]);
                          } else if (snapshot.data[index].avaliacao == "1") {
                            return buildContainerButtonHistorico1(
                              snapshot.data[index]);
                          } else if (snapshot.data[index].avaliacao == "2") {
                          return buildContainerButtonHistorico2(
                            snapshot.data[index]);
                          } else if (snapshot.data[index].avaliacao == "3") {
                            return buildContainerButtonHistorico3(
                                snapshot.data[index]);
                          } else if (snapshot.data[index].avaliacao == "4") {
                          return buildContainerButtonHistorico4(
                              snapshot.data[index]);
                          } else if (snapshot.data[index].avaliacao == "5") {
                          return buildContainerButtonHistorico5(
                             snapshot.data[index]);
                          } return null;
                        });
                  }
                });
          },
        ),
      ),
    );
  }
}
