import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:v_gqs_aulas/components/custom_text_button.dart';
import 'package:v_gqs_aulas/pages/state_management/get_x_example/get_x_example_controller.dart';
import 'package:v_gqs_aulas/pages/state_management/get_x_example/get_x_example_page.dart';
import 'package:v_gqs_aulas/pages/state_management/set_state/set_state_page.dart';

class StateManagementPage extends StatelessWidget {
  const StateManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gerenciamento de Estados'),
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              const CustomTextButton(
                page: SetStatePage(),
                text: 'Set State',
              ),
              CustomTextButton(
                page: GetXExamplePage(),
                text: 'GetX',
                onPressed: () async {
                  await Get.to(() => GetXExamplePage());

                  Get.delete<GetXExampleController>();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
