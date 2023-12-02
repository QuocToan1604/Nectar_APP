import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nectar_app/components/button_green.dart';

class onbordingPage extends StatefulWidget {
  const onbordingPage({super.key});

  @override
  State<onbordingPage> createState() => _onbordingPageState();
}

class _onbordingPageState extends State<onbordingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/onbording/onbording1.png'),
            fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned(
            child: Container(
              color: Colors.black.withOpacity(0.5),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Container(
                padding: EdgeInsets.only(bottom: 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image(
                        image: AssetImage('assets/images/onbording/carrot.png'),
                        width: 45),
                    const SizedBox(height: 10),
                    Text(
                      'Welcome\nto our store',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'gilroy-medium',
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Ger your groceries in as fast as one hour',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'gilroy-medium',
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: ButtonGreen(
                        onPressed: () {},
                        text: 'Get Started',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
