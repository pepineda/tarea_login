import 'package:flutter/material.dart';
import 'package:tarea_login/constant/routes.dart';
import 'package:tarea_login/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      title: 'Inicio de sesión',
      home: LoginPage(),
      initialRoute: MyRoutes.login.name,
      routes: routes,
      //
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => const Scaffold(
            body: Center(
              child: Text('Not found'),
            ),
          ),
        );
      },
    );
  }
}
