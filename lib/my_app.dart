import 'package:flutter/material.dart';
import 'package:school/auth_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: AuthScreen(),);
  }
}
