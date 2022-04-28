import 'package:flutter/material.dart';
import 'package:v_gqs_aulas/components/custom_text_button.dart';
import 'package:v_gqs_aulas/pages/widgets/app_bar/app_bar_page.dart';
import 'package:v_gqs_aulas/pages/widgets/circular_progress_indicator/circular_progress_indicator_page.dart';
import 'package:v_gqs_aulas/pages/widgets/colum/colum_page.dart';
import 'package:v_gqs_aulas/pages/widgets/container/container_page.dart';
import 'package:v_gqs_aulas/pages/widgets/drawer/drawer_page.dart';
import 'package:v_gqs_aulas/pages/widgets/floating_action_button/floating_action_button_page.dart';
import 'package:v_gqs_aulas/pages/widgets/list_view_builder/list_view_builder_page.dart';
import 'package:v_gqs_aulas/pages/widgets/padding/padding_page.dart';
import 'package:v_gqs_aulas/pages/widgets/row/row_page.dart';
import 'package:v_gqs_aulas/pages/widgets/safe_area/safe_area_page.dart';
import 'package:v_gqs_aulas/pages/widgets/scaffold/scaffold_page.dart';
import 'package:v_gqs_aulas/pages/widgets/single_child_scroll_view/single_child_scroll_view_page.dart';
import 'package:v_gqs_aulas/pages/widgets/snack_bar/snack_bar_page.dart';
import 'package:v_gqs_aulas/pages/widgets/text/text_page.dart';
import 'package:v_gqs_aulas/pages/widgets/text_field/text_field_page.dart';

class WidgetPage extends StatelessWidget {
  const WidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets'),
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: const [
              CustomTextButton(
                page: ContainerPage(),
                text: 'Container',
              ),
              CustomTextButton(
                page: AppBarPage(),
                text: 'AppBar',
              ),
              CustomTextButton(
                page: PaddingPage(),
                text: 'Padding',
              ),
              CustomTextButton(
                page: TextPage(),
                text: 'Text',
              ),
              CustomTextButton(
                page: SingleChildScrollViewPage(),
                text: 'SingleChildScrollView',
              ),
              CustomTextButton(
                page: TextFieldPage(),
                text: 'TextField',
              ),
              CustomTextButton(
                page: ColumPage(),
                text: 'Colum',
              ),
              CustomTextButton(
                page: RowPage(),
                text: 'Row',
              ),
              CustomTextButton(
                page: SnackBarPage(),
                text: 'SnackBar',
              ),
              CustomTextButton(
                page: ListViewBuilderPage(),
                text: 'ListViewBuilder',
              ),
              CustomTextButton(
                page: DrawerPage(),
                text: 'Drawer',
              ),
              CustomTextButton(
                page: ScaffoldPage(),
                text: 'Scaffold',
              ),
              CustomTextButton(
                page: SafeAreaPage(),
                text: 'SafeArea',
              ),
              CustomTextButton(
                page: FloatingActionButtonPage(),
                text: 'FloatingActionButton',
              ),
              CustomTextButton(
                page: CircularProgressIndicatorPage(),
                text: 'CircularProgressIndicator',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
