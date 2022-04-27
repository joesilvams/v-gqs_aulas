import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:v_gqs_aulas/utils/functions/snack_bar.dart';

class SharedPreferencesPage extends StatefulWidget {
  const SharedPreferencesPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SharedPreferencesPage> createState() => SharedPreferencesPageState();
}

class SharedPreferencesPageState extends State<SharedPreferencesPage> {
  var items = <String>[];
  var controller = TextEditingController();
  var storageKey = 'items';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getData();
  }

  /// Insere os dados no local storage.
  Future<void> insertData() async {
    try {
      if (controller.text.trim().isEmpty) {
        CustomSnackBar().show(
          context,
          'Item inválido!',
        );

        return;
      }

      final prefs = await SharedPreferences.getInstance();

      items.add(controller.text);

      var result = await prefs.setStringList(
        storageKey,
        items,
      );

      if (result) {
        controller.clear();

        setState(() {
          items;
        });

        CustomSnackBar().show(
          context,
          'Item inserido com sucesso!',
        );
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  /// Busca os dados no local storage.
  Future<void> getData() async {
    try {
      final prefs = await SharedPreferences.getInstance();

      setState(() {
        items = prefs.getStringList(storageKey) ?? [];
      });

      if (kDebugMode) {
        print(items);
      }
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

      final prefs = await SharedPreferences.getInstance();

      if (await prefs.remove('items')) {
        setState(() {
          items.clear();
        });

        CustomSnackBar().show(context, 'Itens ');
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferences'),
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
    );
  }
}
