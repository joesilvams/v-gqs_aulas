import 'package:flutter/material.dart';

class PaddingPage extends StatelessWidget {
  const PaddingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding'),
      ),
      body: Padding(
        // padding: const EdgeInsets.only(left: 10),
        // padding: const EdgeInsets.all( 10),
        // padding: const EdgeInsets.fromLTRB(50, 100, 150, 200),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        child: Container(
          color: Colors.red,
          width: double.maxFinite,
        ),
      ),
    );
  }
}
