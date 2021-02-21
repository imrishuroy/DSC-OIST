import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OneLearningCard extends StatelessWidget {
  final AsyncSnapshot snapshot;
  final String domain;
  final String domainDescription;
  // final int domainIndex;
  final String domainTitle;
  final domainImageUrl;
  final Color cardColor;
  final Color domainTitleColor;

  const OneLearningCard({
    this.domainTitleColor,
    this.snapshot,
    this.domain,
    // this.domainIndex,
    this.domainDescription,
    this.domainTitle,
    this.domainImageUrl,
    this.cardColor,
    Key key,
  }) : super(key: key);

  void urlLauncher(url) async {
    if (await canLaunch(url)) {
      launch(url);
    } else {
      print('Can\'t launch url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Card(
          //color: Color(0xfff5f4f4),
          color: cardColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Column(
            children: [
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    child: Image.asset(domainImageUrl),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    domainTitle,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: domainTitleColor ?? Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Raleway',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  domainDescription,
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                //flex: 1,
                child: ListView.builder(
                  // addAutomaticKeepAlives: false,
                  //  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  // itemCount: snapshot.data.docs.length,
                  // itemCount: snapshot.data.docs[0]['android'].length,
                  itemCount: snapshot.data.docs[0][domain].length,
                  // itemCount: snapshot.data.docs[0].length,

                  itemBuilder: (ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
                      child: GestureDetector(
                        onTap: () {
                          //print(android[index].values);
                          //launch(domain[index]['link']);
                          launch(
                              '${snapshot.data.docs[0][domain][index]['link']}');
                          // print(
                          //     '${snapshot.data.docs[0]['android'][index]['link']}');
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                          ),
                          elevation: 4.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                              vertical: 15.0,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '${snapshot.data.docs[0][domain][index]['title']}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'AverialLibre',
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  snapshot.data.docs[0][domain][index]
                                          ['about'] ??
                                      '',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40.0,
              height: 80.0,
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    50.0,
                  ),
                  bottomRight: Radius.circular(50.0),
                ),
              ),
              child: Icon(
                Icons.navigate_before,
                size: 40.0,
                color: Colors.black54,
              ),
            ),
            Container(
              width: 40.0,
              height: 80.0,
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    50.0,
                  ),
                  bottomLeft: Radius.circular(50.0),
                ),
              ),
              child: Icon(
                Icons.navigate_next,
                size: 40.0,
                color: Colors.black54,
              ),
            ),
          ],
        )
      ],
    );
  }
}
