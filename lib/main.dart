import 'package:first_app/screeens/bottom_bar.dart';
import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter demo",
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const BottomBar(),
    );
  }
}
