import 'package:flutter/material.dart';
import 'package:tarea_login/constant/routes.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usuarioController = TextEditingController();
  final contrasenaController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  String? _validateUser(String? value) {
    if (value == null) return 'debe ingresar su usuario';
    if (value == 'pepineda@unah.hn') return null;

    return 'Usurio inválido';
  }

  String? _validatePassword(String? value) {
    if (value == '20172000922') return null;

    return 'Contraseña inválida';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio de sesión'),
      ),
      body: SingleChildScrollView(
        child: Center(
          // Login form
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  const Image(
                    width: 300,
                    image: AssetImage('assets/logo-sistemas-unah.png'),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Nombre de usuario',
                    ),
                    controller: usuarioController,
                    validator: _validateUser,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const Divider(
                    height: 20,
                    color: Colors.transparent,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Contraseña',
                    ),
                    controller: contrasenaController,
                    obscureText: true,
                    validator: _validatePassword,
                  ),
                  const Divider(
                    height: 20,
                    color: Colors.transparent,
                  ),
                  FilledButton(
                    onPressed: () {
                      bool? validLogin = formKey.currentState?.validate();
                      if (validLogin ?? false) {
                        Navigator.pushNamed(context, MyRoutes.welcome.name);
                      } else {
                        final snackBar = SnackBar(
                          content:
                              const Text('No se pudo validar sus credenciales'),
                          action: SnackBarAction(
                            label: 'Aceptar',
                            onPressed: () {},
                          ),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue),
                    ),
                    child: const Text(
                      'Iniciar sesión',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
