import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'Pages/BottomNavBar.dart';

void main() {

  runApp(
    DevicePreview(enabled: true,
    tools: [
      ...DevicePreview.defaultTools
    ],
    builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Poppins',colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue,
  brightness: Brightness.dark)).copyWith(
    textTheme: TextTheme()),
      
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
      
    );
  }
}
