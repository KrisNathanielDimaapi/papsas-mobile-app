import 'package:flutter/material.dart';
import 'package:appdev/view/widget/button.member.dart';

class YouthInformation extends StatelessWidget {
  const YouthInformation({super.key});

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
                height: 300,
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/youth_forum.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Divider(),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Youth Forum 2024',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  'We are excited to invite you to the Youth Forum 2024 Summit, hosted by the Philippines Association of Practitioners of Student Affairs and Services (PAPSAS) on July 24, 2024. This dynamic event is designed to empower young voices, foster meaningful dialogue, and inspire innovative solutions to the challenges facing today\'s youth. Engage with fellow students, educators, and leaders in interactive sessions, workshops, and networking activities that will shape the future of student affairs and services. Join us for an inspiring day dedicated to youth empowerment and leadership development. We look forward to your enthusiastic participation!',
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
