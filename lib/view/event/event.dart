import 'package:appdev/view/event/event_card.dart';
import 'package:appdev/view/event/leader_information.dart';
import 'package:appdev/view/event/research_information.dart';
import 'package:appdev/view/event/youth_infomation_registration.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
// import 'package:appdev/view/event/research.dart';
// import 'package:appdev/view/event/youth.dart';
// import 'package:appdev/view/event/leader.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Map<DateTime, List<Event>> selectedEvents;
  CalendarFormat calendarFormat = CalendarFormat.month;
  DateTime focusedDay = DateTime.now();
  DateTime selectedDay = DateTime.now();

  final List<DateTime> highlightedDates = [
    DateTime.utc(DateTime.now().year, 7, 24),
    DateTime.utc(DateTime.now().year, 7, 26),
    DateTime.utc(DateTime.now().year, 7, 30),
  ];

  @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }

  List<Event> _getEventsForDay(DateTime day) {
    return selectedEvents[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(color: Colors.white),
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset(
                        "images/papsas.png",
                        height: 28,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        "PAPSAS",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 17, 0),
                            fontSize: 22,
                            fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "INC.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Hello, Practitioner!",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 21),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    "Let's explore what’s happening nearby",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  const SizedBox(height: 20),
                  const Divider(),
                  TableCalendar<Event>(
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: focusedDay,
                    calendarFormat: calendarFormat,
                    selectedDayPredicate: (day) {
                      return isSameDay(selectedDay, day);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        this.selectedDay = selectedDay;
                        this.focusedDay = focusedDay;
                      });
                    },
                    eventLoader: _getEventsForDay,
                    startingDayOfWeek: StartingDayOfWeek.monday,
                    calendarStyle: const CalendarStyle(
                      outsideDaysVisible: false,
                      selectedDecoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 17, 0),
                        shape: BoxShape.circle,
                      ),
                      markerDecoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      todayDecoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 90, 90),
                        shape: BoxShape.circle,
                      ),
                      defaultDecoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      weekendDecoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      holidayDecoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                    ),
                    calendarBuilders: CalendarBuilders(
                      markerBuilder: (context, date, events) {
                        if (highlightedDates.contains(date)) {
                          return Container(
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            width: 16,
                            height: 16,
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  if (date ==
                                      DateTime.utc(
                                          DateTime.now().year, 7, 24)) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const YouthInformation(),
                                      ),
                                    );
                                  } else if (date ==
                                      DateTime.utc(
                                          DateTime.now().year, 7, 26)) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ResearchInformation(),
                                      ),
                                    );
                                  } else if (date ==
                                      DateTime.utc(
                                          DateTime.now().year, 7, 30)) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const LeaderInformation(),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ),
                          );
                        }
                        return null;
                      },
                    ),
                    onFormatChanged: (format) {
                      if (calendarFormat != format) {
                        setState(() {
                          calendarFormat = format;
                        });
                      }
                    },
                    onPageChanged: (focusedDay) {
                      this.focusedDay = focusedDay;
                    },
                  ),
                  ..._getEventsForDay(selectedDay).map(
                    (event) => ListTile(
                      title: Text(event.title),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Divider(),
                  const SizedBox(height: 10),
                  const Text(
                    "Upcoming Events",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  const SizedBox(height: 20),
                  EventCard(
                      title: "Research Conference",
                      date: "July 26, 2024",
                      venue: "Baguio City",
                      image: "images/research.png",
                      route: MaterialPageRoute(
                          builder: (context) => const ResearchInformation())),
                  EventCard(
                      title: "Interactive Youth Forum",
                      date: "July 24, 2024",
                      venue: "Club Yolanda, Batangas",
                      image: "images/leader_summit.jpg",
                      route: MaterialPageRoute(
                          builder: (context) => const YouthInformation())),
                  EventCard(
                      title: "Regional Leader Summit",
                      date: "July 30, 2024",
                      venue: "Manila",
                      image: "images/youth_forum.jpg",
                      route: MaterialPageRoute(
                          builder: (context) => const LeaderInformation())),
                  // Research(),
                  // YouthForum(),
                  // LeaderSummit(),
                  const SizedBox(height: 20),
                  const Divider(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

@immutable
class Event {
  final String title;

  const Event({required this.title});

  @override
  String toString() => title;
}
