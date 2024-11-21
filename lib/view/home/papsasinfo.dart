import 'package:flutter/material.dart';

class ImageTextWidget extends StatelessWidget {
  const ImageTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const Divider(),
          const Text(
              'Philippines Association of Practitioners of Student Affairs and Services, Inc.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 252, 17, 0),
              )),
          const SizedBox(height: 10),
          Image.asset(
            'images/officers.jpg',
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          const Text(
            'The Philippine Association of Practitioners of Student Affairs and Services, Inc. is the professional organization of student affairs and services administrator and practitioners in the Philippines, dedicated to the pursuit of excellence in student affairs and services work. It is an effective channel through which student affairs practitioners can develop and enhance their capabilities. PAPSAS, Inc. is committed to the formation of the Filipino educators through the conduct of effective and relevant programs and services addressing student issues and student affairs development. PAPSAS, Inc. is dedicated in building the competencies of its members through programs and services it offers.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 10),
          Image.asset(
            'images/become.jpg',
            // Replace with your image URL
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          const Text(
            'PAPSAS is the home of SAS Practitioners in the Philippines!',
            style: TextStyle(
              color: Color.fromARGB(255, 252, 17, 0),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'Membership Benefits: \n\n       Registration fee discount on PAPSAS Events. Opportunity to be elected as an officer (for Regular and Special Members). Inclusion in the priority list for Professional Development and Certification Programs. Access to exclusive learning sessions and materials. Issuance of a Certificate of Membership (for all types of membership) and ID card* (for Special Membership). Shipping Fee for ID Card shall be charged to the Member',
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 10),
          const Text(
            'MEMBERSHIP TYPES',
            style: TextStyle(
              color: Color.fromARGB(255, 252, 17, 0),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
