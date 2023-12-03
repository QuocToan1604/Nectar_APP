import 'package:flutter/material.dart';
import 'package:nectar_app/components/custom_button.dart';
import 'package:nectar_app/components/custom_text_field.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool _obscure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Container(
                    height: 180,
                      child: Image.asset('assets/images/login/carrot.png'))),
              Padding(padding: EdgeInsets.only(bottom: 15)),
              Text(
                'Loging',
                style: TextStyle(
                  letterSpacing: 0.1,
                  fontSize: 23,
                  fontFamily: 'gilroy-medium',
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF030303),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 7)),
              Text(
                'Enter your emails and password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 0.1,
                  fontSize: 14,
                  fontFamily: 'gilroy-medium',
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF7C7C7C),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 25)),
              Text(
                'Email',
                textAlign: TextAlign.center,
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
                hintText: '',
                obscureText: false,
              ),
              Padding(padding: EdgeInsets.only(bottom: 25)),
              Text(
                'Password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 0.1,
                  fontSize: 14,
                  fontFamily: 'gilroy-medium',
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF7C7C7C),
                ),
              ),
              TextFormField(
                obscureText: _obscure,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscure = !_obscure;
                        });
                        },
                        child: Icon(_obscure ? Icons.visibility : Icons.visibility_off),
                  )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'ForgotPassword ?',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        letterSpacing: 0.1,
                        fontSize: 14,
                        fontFamily: 'gilroy-medium',
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF181725),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 7)),
              ButtonGreen(onPressed: () {}, text: 'Log In'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      letterSpacing: 0.1,
                      fontSize: 14,
                      fontFamily: 'gilroy-medium',
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF181725),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: () {},
                    child: Text(
                      'Sign up',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        letterSpacing: 0.1,
                        fontSize: 14,
                        fontFamily: 'gilroy-medium',
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF53B175),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
