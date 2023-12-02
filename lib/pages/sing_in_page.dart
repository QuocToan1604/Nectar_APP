import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nectar_app/components/custom_button.dart';
import 'package:nectar_app/components/custom_text_field.dart';

class singInPage extends StatefulWidget {
  const singInPage({super.key});

  @override
  State<singInPage> createState() => _singInPageState();
}

class _singInPageState extends State<singInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
                child: Transform.rotate(
              angle: 4.1,
              child: Transform.scale(
                scale: 3,
                child: Image(
                    image: AssetImage('assets/images/sing_in/singin1.png')),
              ),
            )),
            Positioned(
                child: Container(
              margin: EdgeInsets.only(bottom: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'Get your groceries\nwith nectar',
                      style: TextStyle(
                        shadows: [
                          Shadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                            offset: Offset(3, 3), // changes position of shadow
                          )
                        ],
                        letterSpacing: 0.1,
                        fontSize: 25,
                        fontFamily: 'gilroy-medium',
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF030303),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
                    child: customTextFile(hintText: 'Phone'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Center(
                      child: Text(
                        'Or connect with social media',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'gilroy-medium',
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w100,
                          color: Color(0xFF828282),
                        ),
                      ),
                    ),
                  ),
                  ButtonGoogle(
                      onPressed: () {}, text: 'Continue with Google     '),
                  const SizedBox(height: 20),
                  ButtonFacebook(
                      onPressed: () {}, text: 'Continue with Facebook'),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
