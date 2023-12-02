import 'package:flutter/material.dart';

class ButtonGreen extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const ButtonGreen({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
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
