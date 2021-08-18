import 'package:incasaentregador/app/modules/entregaAtiva/entregaAtiva_Page.dart';
import 'package:incasaentregador/app/modules/entregaAtiva/entregaAtiva_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class EntregaAtivaModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => EntregaAtivaStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => EntregaAtivaPage()),
  ];
}
