import 'package:flutter/material.dart';

class splashPage extends StatefulWidget {
  const splashPage({super.key});

  @override
  State<splashPage> createState() => _splashPageState();
}

class _splashPageState extends State<splashPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Color(0xFF53B175)),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash/splash_Screen.png'),fit: BoxFit.cover)),
      ),
    );
  }
}
