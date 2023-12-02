import 'package:flutter/material.dart';
import 'package:nectar_app/pages/numberphone_page.dart';
import 'package:nectar_app/pages/onbording_page.dart';
import 'package:nectar_app/pages/sing_in_page.dart';
import 'package:nectar_app/pages/splash_page.dart';
import 'package:nectar_app/pages/verifiticationphone_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nectar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: splashPage(),
      // home: onbordingPage(),
      // home: singInPage(),
      // home: numberPhonePage(),
      home: verifiticationPhonePage(),

      

    );
  }
}
