import 'package:dsc_oist/widgets/one_event_container.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PastEventsScreen extends StatelessWidget {
  static String routeName = 'EventExperiment';
  @override
  Widget build(BuildContext context) {
    return

        /*  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // FirebaseFirestore.instance
          //     .collection('images/PHOSbooaLn7l12FjZnpD/eventImage')
          //     .snapshots()
          //     .listen((data) {
          //   // print(data.docs[0]['imageUrl']);
          //   data.docs.forEach((element) {
          //     print(element['imageUrl']);
          //   });
          // });

          FirebaseFirestore.instance
              .collection('pastEvents/KEFnbdHmaa7bQyIOPWYk/events')
              .snapshots()
              .listen((data) {
            // print(data.docs[0]['imageUrl']);
            data.docs.forEach((element) {
              print(element['imageUrl']);
            });
          });
        },
        child: Icon(Icons.add),
      ),
    body: */

        StreamBuilder(
      stream: FirebaseFirestore.instance
          // .collection('images/PHOSbooaLn7l12FjZnpD/eventImage')
          .collection('pastEvents/KEFnbdHmaa7bQyIOPWYk/events')
          .snapshots(),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return ListView.builder(
          reverse: true,
          itemCount: snapshot.data.docs.length,
          itemBuilder: (ctx, index) {
            final imageUrl = snapshot.data.docs[index]['imageUrl'];
            final youtubeLink = snapshot.data.docs[index]['youtubeLink'];
            final date = snapshot.data.docs[index]['date'];

            return
                //  eventContainer(
                //   imageUrl: imageUrl,
                //   eventLink: youtubeLink,
                //   date: date,
                // );

                OneEventContainer(
                    youtubeLink: youtubeLink, imageUrl: imageUrl, date: date);
          },
        );
      },
    );
  }
}
