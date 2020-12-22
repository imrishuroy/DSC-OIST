import 'package:dsc_oist/widgets/one_event_container.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UpcommingEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('upcomingEvents/fDlUSkm2jZ8syVd0yhN4/events')
          .orderBy('numbering')
          .snapshots(),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            //child: CircleIndicator(),
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
          itemCount: snapshot.data.docs.length,
          itemBuilder: (ctx, index) {
            final imageUrl = snapshot.data.docs[index]['imageUrl'];
            final date = snapshot.data.docs[index]['date'];
            final youtubeLink = snapshot.data.docs[index]['youtubeLink'];
            return OneEventContainer(
              imageUrl: imageUrl,
              date: date,
              youtubeLink: youtubeLink,
            );
          },
        );
      },
    );
  }
}
