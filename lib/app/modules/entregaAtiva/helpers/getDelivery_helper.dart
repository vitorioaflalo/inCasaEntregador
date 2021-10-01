import 'package:dio/dio.dart';
import 'package:incasaentregador/app/models/entrega_model.dart';
import 'package:incasaentregador/app/models/model_entregador.dart';

Future<List<EntregaModel>>getDelivery() async {

    Response response;

    var dio = Dio();

    try {
      response = await dio.get('http://incasaapi.herokuapp.com/api/entrega/');
      print(response.data.toString());
      final list = response.data;
      List<EntregaModel> listUser = [];
      listUser = list.map<EntregaModel>((item) => EntregaModel.fromJson(item)).toList();
      return listUser;
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }
