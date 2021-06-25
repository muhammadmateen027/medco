import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'config/config.dart';
import 'presentation/app.dart';

void main() async {
   await Initialization.init();

  runApp(
    DevicePreview(
      enabled: !Initialization.enableLogging,
      builder: (_) => App(),
    ),
  );
}