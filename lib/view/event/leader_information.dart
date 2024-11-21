import 'package:flutter/material.dart';
import 'package:appdev/view/widget/button.member.dart';

class LeaderInformation extends StatelessWidget {
  const LeaderInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 300,
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/leader_summit.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Divider(),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Regional Leadership Summit',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'We are delighted to invite you to the Regional Leader Summit of the Philippines Association of Practitioners of Student Affairs and Services (PAPSAS) on July 30, 2024. This significant gathering will bring together regional leaders and key stakeholders in student affairs to share best practices, explore emerging trends, and collaborate on initiatives aimed at elevating student support services. Join us for a day of inspiring sessions, strategic discussions, and valuable networking opportunities designed to enhance our collective impact on student well-being and success. We eagerly anticipate your participation in this transformative event.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                  width: 390, // Adjust the width as needed
                  child: ButtonMember()),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
