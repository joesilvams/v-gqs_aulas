import 'package:flutter/material.dart';

class FloatingActionButtonPage extends StatefulWidget {
  const FloatingActionButtonPage({Key? key}) : super(key: key);

  @override
  State<FloatingActionButtonPage> createState() =>
      _FloatingActionButtonPageState();
}

class _FloatingActionButtonPageState extends State<FloatingActionButtonPage> {
  var value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button'),
      ),
      body: Center(
        child: Text(
          'Valor: $value',
          style: const TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        autofocus: true,
        child: const Icon(
          Icons.play_arrow,
          size: 40,
        ),
        onPressed: () {
          setState(() {
            value++;
          });
        },
      ),
    );
  }
}
