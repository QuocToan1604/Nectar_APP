import 'package:flutter/material.dart';

class customTextFile extends StatelessWidget {
  final String hintText;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscureText;

  const customTextFile(
      {super.key,
      required this.hintText,
      this.onChanged,
      this.controller,
      this.icon,
      this.keyboardType,
      this.obscureText = true});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFE2E2E2)))
      ),
    );
  }
}
