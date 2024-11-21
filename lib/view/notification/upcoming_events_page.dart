import 'package:appdev/view/notification/notification_card.dart';
import 'package:flutter/material.dart';

class UpcomingEventsPage extends StatelessWidget {
  const UpcomingEventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upcoming Events"),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              CardContent(
                  icon: Icons.event_available_outlined,
                  title: "Research Conference",
                  date: "July 17-19, 2024",
                  description:
                      "This conference, in collaboration with the PAPSAS Region VI Chapter, is a fantastic opportunity for SAS practitioners, scholars, and researchers to come together and enhance our research culture."),
              SizedBox(height: 10),
              CardContent(
                  icon: Icons.event_available_outlined,
                  title: "Annual Gala Dinner",
                  date: "July 15, 2024",
                  description:
                      "Join us for our annual gala dinner, where we celebrate our achievements and honor our supporters."),
              SizedBox(height: 10),
              CardContent(
                  icon: Icons.event_available_outlined,
                  title: "Second Run of 15th Interactive Youth Forum 2024",
                  date: "April 17-19, 2024",
                  description:
                      "As we prepare for the Second Run of the 15th Interactive Youth Forum 2024 on April 17-19, 2024, we want to ensure everyone looks their absolute best! All participants are enjoined to wear the suggested attires for each day."),
              SizedBox(height: 10),
              CardContent(
                  icon: Icons.event_available_outlined,
                  title: "LEAD (Leadership Empowerment Against Dopes)",
                  date: "April 26-28, 2024",
                  description:
                      "National Seminar-Workshop and Training Program on Drug Abuse Prevention and Education (DAPE), April 26-28, 2024 at the Grand Men Seng Hotel, Davao City"),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
