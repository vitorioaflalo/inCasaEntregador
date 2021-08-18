import 'package:flutter_modular/flutter_modular.dart';
import 'package:incasaentregador/app/modules/perfil/perfil_store.dart';
import 'perfil_page.dart';

class PerfilModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PerfilStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => PerfilPage()),
  ];
}