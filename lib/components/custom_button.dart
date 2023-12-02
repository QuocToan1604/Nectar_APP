import 'package:flutter/material.dart';

class ButtonGreen extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const ButtonGreen({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          primary: Color(0xFF53B175),
          onPrimary: Colors.white,
        ),
        child: Text(text),
      ),
    );
  }
}

class ButtonGoogle extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const ButtonGoogle({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          primary: Color(0xFF5383EC),
          onPrimary: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/sing_in/google.png'),),
            const SizedBox(width: 30),
            Text(text),
          ],
        ),
      ),
    );
  }
}

class ButtonFacebook extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const ButtonFacebook(
      {super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          primary: Color(0xFF4A66AC),
          onPrimary: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image(image: AssetImage('assets/images/sing_in/facebook.png'),),
            Icon(Icons.facebook),
            const SizedBox(width: 30),
            Text(text),
          ],
        ),
      ),
    );
  }
}
