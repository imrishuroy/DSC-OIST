import 'package:flutter/material.dart';

import 'event_container.dart';

class PastEvents extends StatelessWidget {
  final List<Widget> pastEventCard = [
    eventContainer(
        imageUrl: 'study-jam.png',
        date: 'Sun, 06 Dec',
        eventLink: 'https://www.youtube.com/watch?v=kCBcVvVqOa4'),
    eventContainer(
        imageUrl: 'flutter-day2.png',
        date: 'Sun, 13 Nov',
        eventLink: 'https://www.youtube.com/watch?v=Y-VSXzBZeJ0'),
    eventContainer(
        imageUrl: 'flutter-day1.png',
        date: 'Sun, 12 Nov',
        eventLink: 'https://www.youtube.com/watch?v=J89bYOgvf4Y'),
    eventContainer(
        imageUrl: 'cp.jpeg',
        date: 'Sat, 24 Oct',
        eventLink: 'https://www.youtube.com/watch?v=cNljQdv_6zc'),
    eventContainer(
        imageUrl: 'info.jpg',
        date: 'Sun, 10 Sep',
        eventLink: 'https://www.youtube.com/watch?v=2tpr1AaNVSU'),
    // eventContainer('android.jpeg'),
    // eventContainer('android.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pastEventCard.length,
      itemBuilder: (ctx, index) => pastEventCard[index],
    );
  }
}
