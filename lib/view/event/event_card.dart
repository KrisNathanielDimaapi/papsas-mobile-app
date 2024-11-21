import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String title;
  final String date;
  final String venue;
  final String image;
  final MaterialPageRoute route;

  const EventCard({
    super.key,
    required this.title,
    required this.date,
    required this.venue,
    required this.image,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(context, route);
        },
        child: Container(
          height: 100,
          margin: const EdgeInsets.only(bottom: 14),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 227, 227, 227),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 16),
                  width: MediaQuery.of(context).size.width - 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 255, 0, 0),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "images/calendar.png",
                            height: 12,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "July 30, 2024",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 12),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "images/location.png",
                            height: 12,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "Manila",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 12),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  child: Image.asset(
                    image,
                    height: 100,
                    width: 120,
                    fit: BoxFit.cover,
                  )),
            ],
          ),
        ));
  }
}
