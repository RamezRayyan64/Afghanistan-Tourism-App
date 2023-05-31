import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// AppBar
AppBar appBarWithTitle({String? title}) {
  return AppBar(
    title: Text(
      title!,
    ),
  );
}

// Exit App
void exitApp() {
  if (Platform.isAndroid) {
    SystemNavigator.pop();
  } else if (Platform.isIOS) {
    exit(0);
  }
}
