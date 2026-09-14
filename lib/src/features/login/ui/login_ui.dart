import 'package:flutter/material.dart';
import 'package:rental/src/core/di/injection.dart';
import 'package:rental/src/core/routes/routers.dart';
import 'package:rental/src/features/login/controller/login_controller.dart';

class LoginUi extends StatelessWidget {
  const new({super.key});
  static final _controller = getIt<LoginController>();
  static final _controllerUsername = TextEditingController(text: '');
  static final _controllerPassword = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Opacity(
            opacity: 0.5,
            child: Container(
              padding: EdgeInsetsGeometry.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color.fromARGB(255, 64, 8, 78),
              ),
              width: 300,
              height: 300,
              child: Column(
                children: [
                  Text(
                    'Entrar',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  inputs(context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: ElevatedButton(
                          onPressed: () async {
                            var username = _controllerUsername.text;
                            var password = _controllerPassword.text;
                            final isSuccess = await _controller.login(
                              username,
                              password,
                            );
                            if (isSuccess) {
                              router.go('/home');
                            }
                          },
                          child: const Text('Confirmar'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget inputs(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextField(
              controller: _controllerUsername,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                fillColor: Colors.white,
                labelText: 'username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextField(
              controller: _controllerPassword,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                labelText: 'password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
