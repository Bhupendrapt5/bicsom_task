import 'package:bicsom_task/helper/utility.dart';
import 'package:flutter/material.dart';

class MyTextStyle extends TextStyle {
  final double size;
  final Color color;
  final FontWeight weight;
  final BuildContext context;
  MyTextStyle({
    this.color = Colors.black,
    this.size = 12,
    @required this.context,
    this.weight = FontWeight.w400,
  }) : super(
            height: 1.5,
            fontWeight: weight,
            fontSize: size * Utility().getTexfactor(context),
            color: color);
}
