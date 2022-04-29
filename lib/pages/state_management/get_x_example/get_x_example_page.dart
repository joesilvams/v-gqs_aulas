import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:v_gqs_aulas/pages/state_management/get_x_example/adapters/get_x_example_adapter.dart';
import 'package:v_gqs_aulas/pages/state_management/get_x_example/get_x_example_controller.dart';

class GetXExamplePage extends StatelessWidget {
  var controller = Get.put(GetXExampleController());

  GetXExamplePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Obx(
              () => Column(
                children: [
                  SizedBox(
                    height: 300,
                    child: GetXExampleAdapter(controller: controller),
                  ),
                  TextField(
                    controller: controller.textEditingController,
                    decoration: const InputDecoration(
                      hintText: 'item',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          child: const Text('Inserir item'),
                          onPressed: () => controller.insertData(),
                        ),
                        ElevatedButton(
                          child: const Text('Remover todos'),
                          onPressed: () => controller.removeItems(),
                        ),
                      ],
                    ),
                  ),
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.items.length,
                    shrinkWrap: true,
                    reverse: true,
                    itemBuilder: (BuildContext context, int index) {
                      var item = controller.items[index];
                      return Center(
                        child: Text(item),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.hourglass_bottom),
        onPressed: () => controller.sortAndInsertValues(),
      ),
    );
  }
}
