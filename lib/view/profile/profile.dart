import 'package:appdev/view/forms/login.view.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.red),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Container(
                    decoration: const BoxDecoration(color: Colors.red),
                    child: const Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("images/kris.jpg"),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kris Nathaniel Dimaapi',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              '0993-423-1971',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(
                                  Icons.verified,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Fully Verified',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ProfileTile(
                    icon: Icons.card_membership,
                    title: "Benefits",
                    ontap: () {}),
                ProfileTile(
                    icon: Icons.settings_outlined,
                    title: "Settings",
                    ontap: () {}),
                ProfileTile(
                    icon: Icons.description_outlined,
                    title: "Terms and Conditions",
                    ontap: () {}),
                ProfileTile(
                  icon: Icons.help_outline,
                  title: "Help",
                  ontap: () {},
                ),
                ProfileTile(
                  icon: Icons.logout_outlined,
                  title: "Logout",
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginView()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function() ontap;

  const ProfileTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      iconColor: const Color.fromARGB(255, 255, 17, 0),
      leading: Icon(icon),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(255, 255, 17, 0),
        ),
      ),
      trailing: Container(
        padding: const EdgeInsets.only(left: 20),
        child: IconButton(
          iconSize: 15,
          onPressed: () {},
          icon: const Icon(Icons.arrow_forward_ios),
          color: const Color.fromARGB(255, 241, 84, 73),
        ),
      ),
      onTap: ontap,
    );
  }
}
