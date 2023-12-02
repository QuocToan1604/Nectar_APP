import 'package:flutter/material.dart';
import 'package:nectar_app/components/custom_text_field.dart';

class verifiticationPhonePage extends StatefulWidget {
  const verifiticationPhonePage({super.key});

  @override
  State<verifiticationPhonePage> createState() =>
      _verifiticationPhonePageState();
}

class _verifiticationPhonePageState extends State<verifiticationPhonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 15),
                  child: Text(
                    'Enter your 4-digit code',
                    style: TextStyle(
                      letterSpacing: 0.1,
                      fontSize: 23,
                      fontFamily: 'gilroy-medium',
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF030303),
                    ),
                  ),
                ),
                Text(
                  'Code',
                  style: TextStyle(
                    letterSpacing: 0.1,
                    fontSize: 14,
                    fontFamily: 'gilroy-medium',
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF7C7C7C),
                  ),
                ),
                customTextFile(
                  hintText: '- - - -',
                  keyboardType: TextInputType.number,
                )
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend Code',
                        style: TextStyle(
                          letterSpacing: 0.1,
                          fontSize: 17,
                          fontFamily: 'gilroy-medium',
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF53B175),
                        ),
                      )),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color(0xFF53B175), shape: BoxShape.circle),
                      child: Icon(
                        Icons.chevron_right,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
