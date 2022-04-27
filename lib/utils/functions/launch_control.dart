import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchControl {
  Future<bool> openMap({
    required double latitude,
    required double longitude,
  }) async {
    try {
      var googleUrl =
          'https://www.google.com/maps/dir/?api=1&origin=$latitude,$longitude&destination=-29.7119471,-53.8199135&travelmode=driving&dir_action=navigate';
      if (await canLaunchUrl(Uri.parse(googleUrl))) {
        var result = await launchUrl(Uri.parse(googleUrl));
        if (result) {
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }

      return false;
    }
  }

  Future<bool> openCallDialog({required String number}) async {
    try {
      var googleUrl = 'tel:$number';
      if (await canLaunchUrl(Uri.parse(googleUrl))) {
        var result = await launchUrl(Uri.parse(googleUrl));
        if (result) {
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }

      return false;
    }
  }
}
