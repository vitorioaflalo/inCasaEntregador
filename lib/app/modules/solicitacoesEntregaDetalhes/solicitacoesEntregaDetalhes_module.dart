import 'package:incasaentregador/app/modules/solicitacoesEntregaDetalhes/solicitacoesEntregaDetalhes_Page.dart';
import 'package:incasaentregador/app/modules/solicitacoesEntregaDetalhes/solicitacoesEntregaDetalhes_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SolicitacoesEntregaDetalhesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SolicitacoesEntregaDetalhesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SolicitacoesEntregaDetalhesPage()),
  ];
}
