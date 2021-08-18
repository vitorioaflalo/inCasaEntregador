import 'package:incasaentregador/app/modules/solicitacoesEntrega/solicitacoesEntrega_Page.dart';
import 'package:incasaentregador/app/modules/solicitacoesEntrega/solicitacoesEntrega_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SolicitacoesEntregaModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SolicitacoesEntregaStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SolicitacoesEntregaPage()),
  ];
}
