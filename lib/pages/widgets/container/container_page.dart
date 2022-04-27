import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Container(
        width: 100,
        height: 100,
        // color: Colors.amber,
        margin: const EdgeInsets.only(left: 20),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.red,
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset(0, 5),
            ),
          ],
          color: Colors.amber,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        // padding: const EdgeInsets.only(left: 20),
        alignment: Alignment.center,
        child: const Text('Container'),
      ),
    );
  }
}
