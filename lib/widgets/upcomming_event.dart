import 'package:dsc_oist/widgets/event_container.dart';
import 'package:flutter/material.dart';

class UpcommingEvent extends StatelessWidget {
  final List<Widget> upcommingEvents = [
    eventContainer(imageUrl: 'study.jpeg', date: ''),
    Center(
      child: Text(
        'Something awesome is commming!',
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: upcommingEvents.length,
      itemBuilder: (ctx, index) => upcommingEvents[index],
    );
  }
}
