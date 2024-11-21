import 'package:flutter/material.dart';

class TextFormGlobal extends StatelessWidget {
  const TextFormGlobal({
    super.key,
    required this.controller,
    required this.text,
    required this.textInputType,
    required this.obscure,
  });
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.only(top: 5, left: 10),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 15)
          ]),
      child: TextFormField(
          controller: controller,
          keyboardType: textInputType,
          obscureText: obscure,
          decoration: InputDecoration(
              labelText: text,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(5),
              hintStyle: const TextStyle(
                height: 1,
              ))),
    );
  }
}
