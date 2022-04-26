import 'package:flutter/material.dart';
import 'package:v_gqs_aulas/pages/app_bar/app_bar_page.dart';
import 'package:v_gqs_aulas/pages/colum/colum_page.dart';
import 'package:v_gqs_aulas/pages/container/container_page.dart';
import 'package:v_gqs_aulas/pages/drawer/drawer_page.dart';
import 'package:v_gqs_aulas/pages/list_view_builder/list_view_builder_page.dart';
import 'package:v_gqs_aulas/pages/padding/padding_page.dart';
import 'package:v_gqs_aulas/pages/row/row_page.dart';
import 'package:v_gqs_aulas/pages/scaffold/scaffold_page.dart';
import 'package:v_gqs_aulas/pages/single_child_scroll_view/single_child_scroll_view_page.dart';
import 'package:v_gqs_aulas/pages/snack_bar/snack_bar_page.dart';
import 'package:v_gqs_aulas/pages/text/text_page.dart';
import 'package:v_gqs_aulas/pages/text_field/text_field_page.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);

  Widget customButton(
    BuildContext context,
    String text,
    Widget page,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 10,
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            ),
          );
        },
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Colors.amber,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo'),
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              customButton(
                context,
                'Container',
                const ContainerPage(),
              ),
              customButton(
                context,
                'AppBar',
                const AppBarPage(),
              ),
              customButton(
                context,
                'Padding',
                const PaddingPage(),
              ),
              customButton(
                context,
                'Text',
                const TextPage(),
              ),
              customButton(
                context,
                'SingleChildScrollView',
                const SingleChildScrollViewPage(),
              ),
              customButton(
                context,
                'TextField',
                const TextFieldPage(),
              ),
              customButton(
                context,
                'Colum',
                const ColumPage(),
              ),
              customButton(
                context,
                'Row',
                const RowPage(),
              ),
              customButton(
                context,
                'SnackBar',
                const SnackBarPage(),
              ),
              customButton(
                context,
                'ListViewBuilder',
                const ListViewBuilderPage(),
              ),
              customButton(
                context,
                'Drawer',
                DrawerPage(),
              ),
              customButton(
                context,
                'Scaffold',
                const ScaffoldPage(),
              ),
              customButton(
                context,
                'SafeArea',
                Container(),
              ),
              customButton(
                context,
                'FloatingActionButton',
                Container(),
              ),
              customButton(
                context,
                'CircularProgressIndicator',
                Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
