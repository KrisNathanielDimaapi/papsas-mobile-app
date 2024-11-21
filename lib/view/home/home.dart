import 'package:appdev/view/carousel/sliding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:appdev/view/forms/heading.dart';
import 'package:appdev/view/home/papsasinfo.dart';
import 'package:appdev/view/membership/membership_sliding.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 25,
            horizontal: 10,
          ),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                children: [
                  const Icon(
                    CupertinoIcons.search,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Search for PAPSAS INC?",
                              border: InputBorder.none)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        HomeHeading(
            title: 'Upcoming Event',
            trailing:
                TextButton(onPressed: () {}, child: const Text('View All'))),
        const HomeSlider(),
        const SizedBox(height: 15),
        const ImageTextWidget(),
        const MemberSlider(),
        const SizedBox(height: 15),
        const Divider(),
        const SizedBox(height: 10),
      ],
    ));
  }
}
