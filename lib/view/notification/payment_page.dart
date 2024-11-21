import 'package:appdev/view/notification/notification_card.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment Notifications"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CardContent(
                icon: Icons.attach_money,
                title: "Membership Renewal",
                date: "December 19, 2023",
                description:
                    "Your membership is about to expire. To continue enjoying our benefits without interruption, please renew your membership. "),
            CardContent(
                icon: Icons.attach_money,
                title: "Event Registration",
                date: "January 27, 2023",
                description:
                    "Your payment is due soon. Please ensure that you make the payment to avoid any conflicts.")
          ],
        ),
      ),
    );
  }
}
