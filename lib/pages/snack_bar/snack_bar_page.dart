import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            child: const Text(
              'Exibir Snackbar',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  padding: const EdgeInsets.only(bottom: 5),
                  dismissDirection: DismissDirection.horizontal,
                  backgroundColor: Colors.green,
                  content: const Text(
                    'Flutter SnackBar!',
                    style: TextStyle(fontSize: 20),
                  ),
                  duration: const Duration(seconds: 5),
                  action: SnackBarAction(
                    label: 'Ação',
                    textColor: Colors.white,
                    onPressed: () {
                      if (kDebugMode) {
                        print('Ação foi selecionada!!!');
                      }
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
