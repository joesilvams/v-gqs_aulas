import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        centerTitle: true,
        actions: const [
          Icon(Icons.play_arrow),
          Icon(Icons.stop),
          Icon(Icons.pause),
        ],
        backgroundColor: Colors.green,
        title: const Text('App Bar'),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: Center(
            child: Text(
              'Exemplo de App Bar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Container(),
    );
  }
}
