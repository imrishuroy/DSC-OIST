import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';

class EventExperiment extends StatelessWidget {
  static String routeName = 'EventExperiment';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FirebaseFirestore.instance
              .collection('images/PHOSbooaLn7l12FjZnpD/eventImage')
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
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('images/PHOSbooaLn7l12FjZnpD/eventImage')
            .snapshots(),
        builder: (ctx, snapshot) {
          return ListView.builder(
              itemCount: snapshot.data.docs.length,
              itemBuilder: (ctx, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        if (await canLaunch(
                            snapshot.data.docs[index]['onPressed'])) {
                          launch(snapshot.data.docs[index]['onPressed']);
                        } else {
                          print('cant launch url');
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.all(20.0),
                        height: 200.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              snapshot.data.docs[index]['imageUrl'],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(snapshot.data.docs[index]['date'])
                  ],
                );
              });
        },
      ),
    );
  }
}
