import 'package:incasaentregador/app/models/entrega_model.dart';
import 'package:incasaentregador/app/modules/historicoDetalhes/historicoDetalhes_Page.dart';
import 'package:incasaentregador/app/modules/historicoDetalhes/historicoDetalhes_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HistoricoDetalhesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HistoricoDetalhesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HistoricoDetalhesPage(args.data)),
  ];
}
