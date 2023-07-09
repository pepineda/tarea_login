import 'package:tarea_login/pages/login_page.dart';
import 'package:tarea_login/pages/welcome_page.dart';

enum MyRoutes {
  login,
  welcome,
}

final routes = {
  MyRoutes.login.name: (context) => LoginPage(),
  MyRoutes.welcome.name: (context) => const WelcomePage(),
};
