import 'package:frontent_internship_test/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontent_internship_test/app/modules/home/home_page.dart';
import 'package:frontent_internship_test/app/shared/store/user_store.dart';
import 'pages/user_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get<UserStore>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router('/user/', child: (_, args) => UserPage(user: args.data))
      ];

  static Inject get to => Inject<HomeModule>.of();
}
