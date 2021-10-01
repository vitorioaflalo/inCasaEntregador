import 'package:dio/dio.dart';
import 'package:incasaentregador/app/models/model_entregador.dart';

import 'package:shared_preferences/shared_preferences.dart';

Future<EntregadorModel> getUser() async {
  Response response;

  var dio = Dio();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  int id = prefs.getInt('id');
  try {
    response = await dio.get(
        'https://api-incasa.herokuapp.com/api/usuarioentregador/?id=&User=$id');
    print(response.data.toString());
    final list = response.data;
    List<EntregadorModel> listUser = [];
    listUser =
        list.map<EntregadorModel>((item) => EntregadorModel.fromJson(item)).toList();
    return listUser.first;
  } on DioError catch (e) {
    print(e);
    return null;
  }
}
