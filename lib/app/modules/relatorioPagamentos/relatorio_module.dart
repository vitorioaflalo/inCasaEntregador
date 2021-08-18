import 'package:flutter_modular/flutter_modular.dart';
import 'relatorio_page.dart';
import 'relatorio_store.dart';

class RelatorioModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RelatorioStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => RelatorioPage()),
  ];
}