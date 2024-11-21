import 'package:flutter/material.dart';

class TextFormLogin extends StatelessWidget {
  const TextFormLogin({
    super.key,
    required this.controller,
    required this.text,
    required this.textInputType,
    required this.obscure,
    this.prefixIcon,
  });
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;
  final IconData? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.only(top: 5, left: 5),
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
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please Enter Email and Password';
            }
            return null;
          },
          decoration: InputDecoration(
              labelText: text,
              prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(5),
              hintStyle: const TextStyle(
                height: 3,
              ))),
    );
  }
}
