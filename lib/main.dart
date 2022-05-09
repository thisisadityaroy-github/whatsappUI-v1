import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:whatsapp_ui/main_screen.dart';

void main() {
  runApp(const Whatsapp());
}

class Whatsapp extends StatelessWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: MainScreen(),
    );
  }
}
