import 'package:flutter/material.dart';

class Utility {
  Size getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  double getTexfactor(BuildContext context) {
    return MediaQuery.of(context).textScaleFactor;
  }

  static String getTimeOfProgram(String time) {
    var now = DateTime.now();
    var pDate = DateTime.parse(time);
    var differenceTime = now.difference(pDate);
    if (differenceTime.inSeconds < 60) {
      return '${differenceTime.inSeconds} Seconds';
    } else if (differenceTime.inMinutes < 60) {
      return '${differenceTime.inMinutes} Mintues';
    } else if (differenceTime.inHours < 24) {
      return '${differenceTime.inHours} Hours';
    } else if (differenceTime.inDays < 31) {
      return '${differenceTime.inMinutes} Days';
    } else {
      return '';
    }
  }
}
