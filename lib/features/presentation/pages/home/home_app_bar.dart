import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBar homeAppBar(BuildContext context, {final isConnected = true}) {
  final textColor = isConnected ? Colors.black : Colors.white;
  final backGroundColor = isConnected ? Colors.white : Colors.blue;
  final systemOverlay = isConnected
      ? const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        )
      : SystemUiOverlayStyle.light;
  return AppBar(
    title: Text(
      "Gitstore",
      style: TextStyle(
        color: textColor,
      ),
    ),
    systemOverlayStyle: systemOverlay,
    backgroundColor: backGroundColor,
    elevation: 0.5,
  );
}
