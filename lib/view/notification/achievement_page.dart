import 'package:appdev/view/notification/notification_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AchievementPage extends StatelessWidget {
  const AchievementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recent Achievements"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CardContent(
                icon: FontAwesomeIcons.award,
                title: "Organization Impact Award",
                date: "July 26, 2022",
                description:
                    "Join us for our annual gala dinner, where we celebrate our achievements and honor our supporters."),
            CardContent(
                icon: FontAwesomeIcons.award,
                title: "PAPSAS at IASAS Global Summit 2024",
                date: "May 27, 2024",
                description:
                    "PAPSAS Officers and Members join the biggest delegation of IASAS Global Summit 2024 with the theme \"Education Institutions and Student Affairs Driving Sustainable Change\" held In Daegu, South Korea on May 22-25, 2024."),
            CardContent(
                icon: FontAwesomeIcons.award,
                title:
                    "Incredibile Success of the 15th Interactive Youth Forum Second Run",
                date: "April 25, 2024",
                description:
                    "Held on April 17-19 2024 at the Crown Legacy Hotel, Baguio City! "),
          ],
        ),
      ),
    );
  }
}
