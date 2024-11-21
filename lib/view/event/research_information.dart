import 'package:flutter/material.dart';
import 'package:appdev/view/widget/button.member.dart';

class ResearchInformation extends StatelessWidget {
  const ResearchInformation({super.key});

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
                    image: AssetImage('images/research.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Divider(),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Research Conference',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'We are thrilled to invite you to the Research Conference of the Philippines Association of Practitioners of Student Affairs and Services (PAPSAS), taking place on July 26, 2024. This esteemed event will gather thought leaders, educators, and professionals dedicated to advancing student affairs and services through research and innovation. Join us for a day of insightful presentations, collaborative discussions, and networking opportunities, all aimed at enhancing our collective impact on student success. Don\'t miss this chance to be part of a transformative experience that will shape the future of student affairs in the Philippines. We look forward to your participation!',
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
