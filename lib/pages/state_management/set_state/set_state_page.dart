import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:v_gqs_aulas/utils/functions/snack_bar.dart';

class SetStatePage extends StatefulWidget {
  const SetStatePage({Key? key}) : super(key: key);

  @override
  State<SetStatePage> createState() => _SetStatePageState();
}

class _SetStatePageState extends State<SetStatePage> {
  var items = <String>[];
  var controller = TextEditingController();
  var storageKey = 'items';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Future<void> insertData() async {
    try {
      if (controller.text.trim().isEmpty) {
        CustomSnackBar().show(
          context,
          'Item inválido!',
        );

        return;
      }

      setState(() {
        items.add(controller.text);
      });

      controller.clear();

      CustomSnackBar().show(
        context,
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
          context,
          'Todos os itens já foram removidos!',
        );

        return;
      }

      setState(() {
        items.clear();
      });
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  Future<void> sortAndInsertValues() async {
    try {
      items.clear();

      var random = Random().nextInt(100);

      if (kDebugMode) {
        print(random);
      }

      for (var i = 0; i < random; i++) {
        await Future.delayed(const Duration(seconds: 1));

        setState(() {
          items.add(i.toString());
        });
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }

      CustomSnackBar().show(
        context,
        'erro ao realizar ação!',
      );
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set State'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                TextField(
                  controller: controller,
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
                        onPressed: () => insertData(),
                      ),
                      ElevatedButton(
                        child: const Text('Remover todos'),
                        onPressed: () => removeItems(),
                      ),
                    ],
                  ),
                ),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  shrinkWrap: true,
                  reverse: true,
                  itemBuilder: (BuildContext context, int index) {
                    var item = items[index];
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
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.hourglass_bottom),
        onPressed: () {
          sortAndInsertValues();
        },
      ),
    );
  }
}
