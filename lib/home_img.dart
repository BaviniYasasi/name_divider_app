import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

class Img extends StatelessWidget {
  const Img({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/group3.jpg"),
          fit: BoxFit.cover,)
        ),
         child: const Center(child: HomePage()),
      ),
    );
  }
}