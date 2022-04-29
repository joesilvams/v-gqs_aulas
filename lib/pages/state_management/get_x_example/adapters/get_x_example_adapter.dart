import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:v_gqs_aulas/pages/state_management/get_x_example/get_x_example_controller.dart';

class GetXExampleAdapter extends StatelessWidget {
  final GetXExampleController controller;

  const GetXExampleAdapter({
    Key? key,
    required this.controller,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.separated(
        reverse: true,
        padding: const EdgeInsets.only(top: 20),
        itemCount: controller.modelValues.length,
        itemBuilder: (BuildContext context, index) {
          var item = controller.modelValues[index];

          return GestureDetector(
            onTap: () {
              item.title = 'selecionei';
              item.value = (item.value ?? 0) + 1;

              controller.modelValues.refresh();
            },
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'item: ${item.title}',
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'valor: ${item.value}',
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 20,
          );
        },
      ),
    );
  }
}
