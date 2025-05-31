import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.labeldText});
  String labeldText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        label: Text(
          labeldText,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
