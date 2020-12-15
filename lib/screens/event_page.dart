import 'package:dsc_oist/widgets/past_event.dart';
import 'package:dsc_oist/widgets/upcomming_event.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  style: GoogleFonts.raleway(
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
                    style: GoogleFonts.harmattan(
                      fontSize: 24.0,
                      color: Colors.pink,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Tab(
                  icon: Text(
                    'Past',
                    style: GoogleFonts.harmattan(
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
              PastEvents(),
            ],
          ),
        ),
      ),
    );
  }
}
