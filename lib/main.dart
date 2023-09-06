import 'package:flutter/material.dart';

import 'package:multi_store_app/main_screens/supplier_home.dart';
import 'package:multi_store_app/main_screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: WelcomeScreen());
  }
}
