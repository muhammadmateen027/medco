import 'dart:io';

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Object? obj;
  final Color backgroundColor;
  final Color iconColor;
  final List<Widget>? customActions;
  final Widget? title;
  final double? elevation;
  final double backgroundOpacity;

  const CustomAppBar({
    Key? key,
    this.obj,
    this.backgroundColor = Colors.white,
    this.iconColor = Colors.black,
    this.customActions,
    this.title,
    this.elevation = 0.0,
    this.backgroundOpacity = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation,
      title: title,
      backgroundColor: backgroundColor.withOpacity(backgroundOpacity),
      centerTitle: Platform.isIOS,
      leading: IconButton(
        icon: Icon(
          Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () => Navigator.of(context).pop(obj),
      ),
      actions: customActions,
    );
  }
}
