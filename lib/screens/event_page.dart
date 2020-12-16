import 'package:dsc_oist/screens/past_event_screen.dart';

import 'package:dsc_oist/screens/upcomming_event_screen.dart';
import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  static String routeName = 'event-page';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(25, 37, 46, 1),
          appBar: AppBar(
            backgroundColor: Colors.white30,
            title: Row(
              children: [
                Icon(Icons.calendar_today),
                SizedBox(width: 15.0),
                Text(
                  'Events',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 30.0,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            bottom: TabBar(
              indicatorColor: Colors.green,
              indicatorWeight: 4.0,
              tabs: [
                Tab(
                  icon: Text(
                    'Upcomming',
                    style: TextStyle(
                      fontFamily: 'Harmattan',
                      fontSize: 24.0,
                      color: Colors.pink,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Tab(
                  icon: Text(
                    'Past',
                    style: TextStyle(
                      fontFamily: 'Harmattan',
                      fontSize: 24.0,
                      color: Colors.pink,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              UpcommingEvent(),
              //PastEvents(),
              PastEventsScreen()
            ],
          ),
        ),
      ),
    );
  }
}
