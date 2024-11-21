import 'package:appdev/view/notification/achievement_page.dart';
import 'package:appdev/view/notification/notification_card.dart';
import 'package:appdev/view/notification/payment_page.dart';
import 'package:appdev/view/notification/upcoming_events_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.notifications_outlined),
        title: const Text(
          "Notifications",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0, // Remove shadow
              side: BorderSide.none, // Remove border
              shape: const CircleBorder(),
              backgroundColor:
                  Colors.white, // Maintain circular shape for icon button
            ),
            child: const Icon(Icons.filter_alt_outlined),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          NotificationCard(
            heading: "Upcoming Events",
            icon: Icons.event,
            items: const [
              CardContent(
                  icon: Icons.event_available_outlined,
                  title: "Research Conference",
                  date: "July 17-19, 2024",
                  description:
                      "This conference, in collaboration with the PAPSAS Region VI Chapter, is a fantastic opportunity for SAS practitioners, scholars, and researchers to come together and enhance our research culture."),
              CardContent(
                  icon: Icons.event_available_outlined,
                  title: "Annual Gala Dinner",
                  date: "July 15, 2023",
                  description:
                      "Join us for our annual gala dinner, where we celebrate our achievements and honor our supporters."),
            ],
            destination: (context) => const UpcomingEventsPage(),
          ),
          NotificationCard(
              heading: "Recent Achievements",
              icon: Icons.emoji_events_outlined,
              items: const [
                CardContent(
                    icon: FontAwesomeIcons.award,
                    title: "Organization Impact Award",
                    date: "July 26, 2022",
                    description:
                        "Join us for our annual gala dinner, where we celebrate our achievements and honor our supporters.")
              ],
              destination: (context) => const AchievementPage()),
          NotificationCard(
              heading: "Payment Notifications",
              icon: Icons.payment,
              items: const [
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
              destination: (context) => const PaymentPage()),
        ],
      ),
    );
  }
}
