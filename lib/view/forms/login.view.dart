import 'package:appdev/view/widget/button.login.dart';
import 'package:appdev/view/forms/register.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return '';
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return '';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(0.0),
                  child: const Image(
                    image: AssetImage('images/papsas.png'),
                    width: 70,
                    height: 70,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'PAPSAS INC.',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 0, 0),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 30),
                        Text(
                          'Welcome to PAPSAS INC.',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 255, 0, 0)
                                  .withOpacity(0.5),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 15),
                        //email
                        Form(
                          key: _formKey,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 60,
                                padding: const EdgeInsets.only(
                                    top: 5, left: 10, bottom: 5),
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(6),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          blurRadius: 15)
                                    ]),
                                child: Center(
                                  child: TextFormField(
                                    controller: emailController,
                                    decoration: const InputDecoration(
                                      hintText: 'Email',
                                      border: InputBorder.none,
                                      icon: Icon(Icons.account_circle_rounded),
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                    validator: emailValidator,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                height: 60,
                                padding:
                                    const EdgeInsets.only(top: 5, left: 10),
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(6),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          blurRadius: 15)
                                    ]),
                                child: Center(
                                  child: TextFormField(
                                    controller: passwordController,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Password',
                                      icon: Icon(Icons.lock),
                                    ),
                                    keyboardType: TextInputType.text,
                                    obscureText: true,
                                    validator: passwordValidator,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              ButtonGlobal(
                                formKey: _formKey,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: const Color.fromARGB(250, 254, 247, 255),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Don\'t have an account?',
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Register())); //for next widget
              },
              child: const Text(' Sign Up',
                  style: TextStyle(
                    color: Colors.red,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
