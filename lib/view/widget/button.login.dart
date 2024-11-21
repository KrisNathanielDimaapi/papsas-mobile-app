import 'package:flutter/material.dart';
import 'package:appdev/view/navigation/navigation_menu.dart';

class ButtonGlobal extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const ButtonGlobal({super.key, required this.formKey});

  void showValidationErrorDialog(BuildContext context, String errorMessage) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Invalid Input'),
          content: Text(errorMessage),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
        // new code
        onPressed: () {
          if (formKey.currentState?.validate() ?? false) {
            debugPrint("Working");
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NavigationMenu()));
          } else {
            showValidationErrorDialog(
                context, 'Please provide valid email and password!');
          }
        },

        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 255, 17, 0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        child: const Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
