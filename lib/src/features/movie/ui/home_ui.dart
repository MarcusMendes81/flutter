import 'package:flutter/material.dart';
import 'package:rental/src/core/di/injection.dart';
import 'package:rental/src/features/login/controller/login_controller.dart';
import 'package:rental/src/features/movie/ui/tab_ui.dart';

class HomeUi extends StatefulWidget {
  const new({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          leading: const Padding(
            padding: EdgeInsetsGeometry.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(image: AssetImage('assets/user.png')),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(padding: const EdgeInsets.all(8.0), child: TabUi()),
      ),
    );
  }
}
