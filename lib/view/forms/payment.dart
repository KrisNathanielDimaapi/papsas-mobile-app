//import 'package:appdev/view/login.view.dart';
import 'package:flutter/material.dart';
import 'package:appdev/view/widget/text.form.global.dart';
import 'package:appdev/view/widget/payment.button.dart';

class Payment extends StatelessWidget {
  Payment({super.key});
  final TextEditingController receiptController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController memIDController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  final TextEditingController membershipTypeController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context, false))),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 0),
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
                          'Payment Form',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 255, 0, 0)
                                  .withOpacity(0.5),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 15),
                        //email
                        Form(
                            child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormGlobal(
                                    controller: memIDController,
                                    text: 'Membership ID',
                                    obscure: false,
                                    textInputType: TextInputType.text,
                                  ),
                                ),
                                const SizedBox(width: 14),
                                Expanded(
                                  child: TextFormGlobal(
                                    controller: nameController,
                                    text: 'Name',
                                    obscure: false,
                                    textInputType: TextInputType.text,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 14),
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormGlobal(
                                    controller: membershipTypeController,
                                    text: 'Membership Type',
                                    obscure: false,
                                    textInputType: TextInputType.text,
                                  ),
                                ),
                                const SizedBox(width: 14),
                                Expanded(
                                  child: TextFormGlobal(
                                    controller: amountController,
                                    text: 'Amount',
                                    obscure: false,
                                    textInputType: TextInputType.text,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 14),
                            TextFormGlobal(
                              controller: receiptController,
                              text: 'Reference Receipt',
                              obscure: false,
                              textInputType: TextInputType.number,
                            ),
                            const SizedBox(height: 14),
                          ],
                        )),
                        const SizedBox(height: 15),
                        const ButtonPayment(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
