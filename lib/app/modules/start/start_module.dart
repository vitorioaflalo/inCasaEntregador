import 'package:incasaentregador/app/modules/entregaAtiva/entregaAtiva_module.dart';
import 'package:incasaentregador/app/modules/historico/historico_module.dart';
import 'package:incasaentregador/app/modules/historicoDetalhes/historicoDetalhes_module.dart';
import 'package:incasaentregador/app/modules/home/home_module.dart';
import 'package:incasaentregador/app/modules/home/home_page.dart';
import 'package:incasaentregador/app/modules/home/home_store.dart';
import 'package:incasaentregador/app/modules/perfil/perfil_module.dart';
import 'package:incasaentregador/app/modules/relatorioPagamentos/relatorio_module.dart';
import 'package:incasaentregador/app/modules/solicitacoesEntrega/solicitacoesEntrega_module.dart';
import 'package:incasaentregador/app/modules/solicitacoesEntregaDetalhes/solicitacoesEntregaDetalhes_module.dart';
import 'package:incasaentregador/app/modules/start/start_Page.dart';
import 'package:incasaentregador/app/modules/start/start_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class StartModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => StartStore()),
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => StartPage(), children: [
      ModuleRoute('/home', module: HomeModule()),
      ModuleRoute('/entregaAtiva', module: EntregaAtivaModule()),
        ModuleRoute('/solicitacoesEntrega', module: SolicitacoesEntregaModule()),
      ModuleRoute('/solicitacoesEntregaDetalhes',
          module: SolicitacoesEntregaDetalhesModule()),
      ModuleRoute('/historico', module: HistoricoModule()),
      ModuleRoute('/historicoDetalhes', module: HistoricoDetalhesModule()),
      ModuleRoute('/perfil', module: PerfilModule()),
      ModuleRoute('/relatorio', module: RelatorioModule()),
    ]),
  ];
}
