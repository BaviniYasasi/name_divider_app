import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_img.dart';

class NameApp extends StatelessWidget {
  const NameApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text(
            'iCET Name Group Divider App',
            style: TextStyle(
              color: Colors.white, 
              fontSize: 20
            ),
          ),
        ),
        body: const Img(),
      ),
    );
  }
}