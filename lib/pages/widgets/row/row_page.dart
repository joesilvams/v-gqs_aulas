import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row'),
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: [
            Container(
              color: Colors.amber,
              height: 50,
              width: 20,
            ),
            Container(
              color: Colors.orange,
              height: double.maxFinite,
              width: 20,
            ),
            Container(
              color: Colors.green,
              height: 100,
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
