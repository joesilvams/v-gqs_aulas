import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:v_gqs_aulas/pages/state_management/get_x_example/models/get_x_model.dart';
import 'package:v_gqs_aulas/utils/functions/snack_bar.dart';

class GetXExampleController extends GetxController {
  var items = <String>[].obs;
  var modelValues = <GetXModel>[].obs;
  var textEditingController = TextEditingController();

  Future<void> insertData() async {
    try {
      if (textEditingController.text.trim().isEmpty) {
        CustomSnackBar().show(
          Get.context!,
          'Item inválido!',
        );

        return;
      }

      modelValues.add(
        GetXModel(
          title: textEditingController.text,
          value: items.length,
        ),
      );

      items.add(textEditingController.text);

      textEditingController.clear();

      CustomSnackBar().show(
        Get.context!,
        'Item inserido com sucesso!',
      );
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  Future<void> removeItems() async {
    try {
      if (items.isEmpty) {
        CustomSnackBar().show(
          Get.context!,
          'Todos os itens já foram removidos!',
        );

        return;
      }

      items.clear();
      modelValues.clear();
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  Future<void> sortAndInsertValues() async {
    try {
      items.clear();
      modelValues.clear();

      var random = Random().nextInt(100);

      if (kDebugMode) {
        print(random);
      }

      for (var i = 1; i < random; i++) {
        await Future.delayed(const Duration(seconds: 1));

        modelValues.add(
          GetXModel(
            title: i.toString(),
            value: items.length,
          ),
        );

        items.add(i.toString());
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }

      CustomSnackBar().show(
        Get.context!,
        'erro ao realizar ação!',
      );
    }
  }
}
