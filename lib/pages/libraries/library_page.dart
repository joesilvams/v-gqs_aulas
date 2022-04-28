import 'package:flutter/material.dart';
import 'package:v_gqs_aulas/components/custom_text_button.dart';
import 'package:v_gqs_aulas/pages/libraries/flutter_icon/flutter_icon.dart';
import 'package:v_gqs_aulas/pages/libraries/shared_preferences/shared_preferences_page.dart';
import 'package:v_gqs_aulas/pages/libraries/url_launcher/url_launcher_page.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bibliotecas'),
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              const CustomTextButton(
                page: SharedPreferencesPage(),
                text: 'Shared Preferences',
              ),
              const CustomTextButton(
                page: FlutterIconPage(),
                text: 'Flutter Icon',
              ),
              CustomTextButton(
                page: UrkLauncherPage(),
                text: 'Url Launcher',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
