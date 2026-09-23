import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController txtController;
  final String myHint;

  const CustomTextfield({
    super.key,
    required this.txtController,
    required this.myHint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      style: const TextStyle(
        color: Colors.black, // <-- Warna teks yang diketik (Hitam)
        fontSize: 16,
      ),
      decoration: InputDecoration(
        hintText: myHint,
        hintStyle: const TextStyle(color: Colors.grey),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.green),
        ),
      ),
    );
  }
}