import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    title: const Text(
      "Gitstore",
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: Colors.white,
    elevation: 0.5,
  );
}
