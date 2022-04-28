import 'package:flutter/material.dart';
import 'package:v_gqs_aulas/utils/functions/launch_control.dart';
import 'package:v_gqs_aulas/utils/functions/snack_bar.dart';

class UrkLauncherPage extends StatelessWidget {
  var controller = TextEditingController();
  UrkLauncherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Url Launcher'),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    var result = await LaunchControl().openMap(
                      latitude: -29.693122,
                      longitude: -53.8122317,
                    );

                    if (!result) {
                      CustomSnackBar().show(
                        context,
                        'Não foi possível abrir o mapa!',
                      );
                    }
                  },
                  child: const Text('Abrir mapa'),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: controller,
                  decoration: const InputDecoration(
                    hintText: 'Número',
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    var result = await LaunchControl().openCallDialog(
                      number: controller.text,
                    );

                    if (!result) {
                      CustomSnackBar().show(
                        context,
                        'Não foi possível abrir o discador!',
                      );
                    }
                  },
                  child: const Text('Abrir telefone'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
