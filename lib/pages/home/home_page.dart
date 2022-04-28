import 'package:flutter/material.dart';
import 'package:v_gqs_aulas/components/custom_text_button.dart';
import 'package:v_gqs_aulas/pages/libraries/library_page.dart';
import 'package:v_gqs_aulas/pages/widgets/widget_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: const [
              CustomTextButton(
                page: WidgetPage(),
                text: 'Widgets',
              ),
              CustomTextButton(
                page: LibraryPage(),
                text: 'Bibliotecas',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
