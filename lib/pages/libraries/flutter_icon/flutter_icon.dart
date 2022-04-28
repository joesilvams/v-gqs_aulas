import 'package:flutter/material.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/fontelico_icons.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:fluttericon/maki_icons.dart';
import 'package:fluttericon/meteocons_icons.dart';
import 'package:fluttericon/mfg_labs_icons.dart';
import 'package:fluttericon/modern_pictograms_icons.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:fluttericon/web_symbols_icons.dart';
import 'package:fluttericon/zocial_icons.dart';

class FlutterIconPage extends StatelessWidget {
  const FlutterIconPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Icon'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Brandico.twitter_1,
                  size: 30,
                ),
                Icon(
                  Elusive.accessibility,
                  size: 30,
                ),
                Icon(
                  Entypo.up,
                  size: 30,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  FontAwesome5.accessible_icon,
                  size: 30,
                ),
                Icon(
                  FontAwesome.adjust,
                  size: 30,
                ),
                Icon(
                  Fontelico.chrome,
                  size: 30,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Iconic.aperture,
                  size: 30,
                ),
                Icon(
                  LineariconsFree.tablet,
                  size: 30,
                ),
                Icon(
                  Linecons.videocam,
                  size: 30,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Maki.aboveground_rail,
                  size: 30,
                ),
                Icon(
                  Meteocons.cloud,
                  size: 30,
                ),
                Icon(
                  MfgLabs.anchor,
                  size: 30,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  ModernPictograms.article,
                  size: 30,
                ),
                Icon(
                  Octicons.alert,
                  size: 30,
                ),
                Icon(
                  RpgAwesome.acid,
                  size: 30,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Typicons.address,
                  size: 30,
                ),
                Icon(
                  WebSymbols.archive,
                  size: 30,
                ),
                Icon(
                  Zocial.acrobat,
                  size: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
