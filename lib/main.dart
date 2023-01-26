import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_chatapp/screens/main_screen.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white, statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
      title: 'What\'s Chat',
    );
  }
}
