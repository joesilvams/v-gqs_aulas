import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomSnackBar {
  void show(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        padding: const EdgeInsets.only(bottom: 5),
        dismissDirection: DismissDirection.horizontal,
        backgroundColor: Colors.green,
        content: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 5,
          ),
          child: Text(
            msg,
            style: const TextStyle(fontSize: 20),
          ),
        ),
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'fechar',
          textColor: Colors.white,
          onPressed: () {
            if (kDebugMode) {
              print('Ação foi selecionada!!!');
            }
          },
        ),
      ),
    );
  }
}
