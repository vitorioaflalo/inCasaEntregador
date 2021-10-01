import 'package:dio/dio.dart';
import 'package:incasaentregador/app/models/entrega_model.dart';
import 'package:incasaentregador/app/models/establecimento_model.dart';
import 'package:incasaentregador/app/models/historico_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<HistoricoModel>> getUsers() async {
  Response response2;
  Response response;
  var dio = Dio();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  int id = prefs.getInt('id');
  print(id);

  try {
    response = await dio.get(
        'https://api-incasa.herokuapp.com/api/entrega/?id=&Entregador=$id');
    response2 = await dio
        .get('https://api-incasa.herokuapp.com/api/usuarioestabelecimento/');
    print(response.data.toString());
    print(response2.data.toString());
    final list = response.data;
    final list2 = response2.data;
    List<EntregaModel> listUser = [];
    List<PerfilModel> listEstabelecimento = [];
    List<HistoricoModel> listHistorico = [];
    listEstabelecimento =
        list2.map<PerfilModel>((item) => PerfilModel.fromJson(item)).toList();
    listUser =
        list.map<EntregaModel>((item) => EntregaModel.fromJson(item)).toList();

    for (int i = 0; i < listUser.length; i++) {
      for (int e = 0; e < listEstabelecimento.length; e++) {
        if (listUser[i].estabelecimento == listEstabelecimento[e].id) {
          listHistorico.add(HistoricoModel(
            listUser[i].distancia.toString(),
            listEstabelecimento[e].razaoSocial,
            listUser[i].createdAt,
            listUser[i].status,
            listUser[i].avaliacao,
            listUser[i].nomeDoCliente,
            listUser[i].logradouro,
            listUser[i].pontoDeReferencia,
            listUser[i].telefone,
            listUser[i].valorDoPedido,
            listUser[i].valorDaEntrega,
            listUser[i].metodoDePagamento,
            listUser[i].cargaMaiorHabitual,
          ));
          print(listUser[i].createdAt);
          print(listEstabelecimento[e].razaoSocial);
        }
      }
    }
    return listHistorico;
  } on DioError catch (e) {
    if (e.response.statusCode == 400) {
      List<HistoricoModel> lista = [];
      lista.add(
          HistoricoModel('', '', '', '', '', '', '', '', '', '', '', '', ''));
      return lista;
    }
    print(e);
    return null;
  }
}
