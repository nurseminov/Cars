import 'package:flutter/material.dart';
import 'package:fullproject1/core/ui/screens/cars_screen.dart';
import 'package:fullproject1/core/ui/screens/home_page.dart';
import 'package:fullproject1/core/ui/screens/welcome_screen.dart';

import 'core/ui/screens/login_screen.dart';
import 'core/ui/screens/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomeScreen(),
    );
  }
}
