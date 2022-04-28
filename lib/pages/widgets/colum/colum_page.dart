import 'package:flutter/material.dart';

class ColumPage extends StatelessWidget {
  const ColumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colum'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: [
            Container(
              color: Colors.amber,
              width: 100,
              height: 20,
            ),
            Container(
              color: Colors.orange,
              width: double.maxFinite,
              height: 20,
            ),
            Container(
              color: Colors.green,
              width: 200,
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
