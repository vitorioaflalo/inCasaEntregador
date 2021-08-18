import 'package:incasaentregador/app/modules/historico/historico_Page.dart';
import 'package:incasaentregador/app/modules/historico/historico_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HistoricoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HistoricoStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HistoricoPage()),
  ];
}
