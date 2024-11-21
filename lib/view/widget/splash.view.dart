import 'dart:async';
import 'package:appdev/view/forms/login.view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.to(LoginView());
    });
    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Center(
            child: Image(
          image: AssetImage('images/papsas.png'),
          height: 150,
          width: 150,
        )));
  }
}
