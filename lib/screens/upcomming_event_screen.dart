import 'package:dsc_oist/widgets/one_event_container.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UpcommingEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('upcomingEvents/fDlUSkm2jZ8syVd0yhN4/events')
          .snapshots(),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
          itemCount: snapshot.data.docs.length,
          itemBuilder: (ctx, index) {
            final imageUrl = snapshot.data.docs[index]['imageUrl'];
            return OneEventContainer(
              imageUrl: imageUrl,
              date: '',
              youtubeLink: '',
            );
          },
        );
      },
    );
  }
}
