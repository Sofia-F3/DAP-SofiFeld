import 'package:listas/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  static const String name = 'login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _LoginView(),
    );
  }
}

class _LoginView extends StatelessWidget {
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();

  List<String> usuarios = ["sofi", "ana", "eli"];
  List<String> contras = ["123", "jaja", "miau"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Logueate: ",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
            width: 600,
            child: TextField(
              controller: userController,
              decoration: const InputDecoration(
                  hintText: 'Usuario ', icon: Icon(Icons.person)),
            ),
          ),
          SizedBox(
            height: 100,
            width: 600,
            child: TextField(
              controller: passController,
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: 'Contraseña', icon: Icon(Icons.key)),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (usuarios.contains(userController.text)) {
                  for (int i = 0; i < 4; i++) {
                    if (usuarios[i] == userController.text &&
                        contras[i] == passController.text) {
                      context.pushNamed(HomeScreen.name,
                          extra: userController.text);
                    }
                  }
                }
              },
              child: const Text("Login")),
        ],
      ))),
    );
  }
}
