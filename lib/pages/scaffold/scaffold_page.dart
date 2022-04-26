import 'package:flutter/material.dart';

class ScaffoldPage extends StatelessWidget {
  const ScaffoldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold'),
      ),
      backgroundColor: Colors.green,
      bottomNavigationBar: Container(
        height: 20,
        color: Colors.red,
      ),
      endDrawer: const SizedBox(
        child: Drawer(),
      ),
      drawer: const SizedBox(
        child: Drawer(),
      ),
      floatingActionButton: const Icon(
        Icons.stop,
        size: 40,
      ),
      bottomSheet: Container(
        height: 20,
        color: Colors.blue,
      ),
      body: Container(),
    );
  }
}
