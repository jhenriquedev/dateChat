import 'package:flutter/material.dart';

import 'util.dart';

class BaseAppBar extends StatelessWidget {
  final String title;
  final Color titleColor;
  final Color borderColor;
  final Color background;

  BaseAppBar({
    this.title,
    this.titleColor,
    this.borderColor,
    this.background,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: background,
      automaticallyImplyLeading: false,
      title: roboto(
        text: title,
        size: 18,
        weight: FontWeight.w600,
        letterSpacing: 0,
        color: titleColor,
      ),
      shape: borderColor != null 
      ? Border(
        bottom: BorderSide(
          color: borderColor,
        ),
      )
      : null,
    );
  }
}
