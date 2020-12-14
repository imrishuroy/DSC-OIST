import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TeamScreen extends StatelessWidget {
  static String routeName = 'people_dsc';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color.fromRGBO(25, 37, 46, 0.1),
        // backgroundColor: Color.fromRGBO(44, 184, 255, 1),
        backgroundColor: Color.fromRGBO(25, 37, 46, 1),
        // appBar: AppBar(
        //   elevation: 10.0,

        //   title: Text(
        //     'Get to Know About Us',
        //   ),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                child: Text(
                  'Our Team',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  '"Any individual can\'t create a awesome community. Every Community that ever existed started with sharing ! " ',
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20.0),
              TeamCard(
                name: 'Rishu Kumar',
                deignation: 'Android Lead',
                imgUrl: 'rishu',
              ),
              SizedBox(height: 20.0),
              TeamCard(
                name: 'Rishu Kumar',
                deignation: 'Android Lead',
                imgUrl: 'rishu',
              ),
              SizedBox(height: 20.0),
              TeamCard(
                name: 'Rishu Kumar',
                deignation: 'Android Lead',
                imgUrl: 'rishu',
              ),
              SizedBox(height: 20.0),
              TeamCard(
                name: 'Rishu Kumar',
                deignation: 'Android Lead',
                imgUrl: 'rishu',
              ),
              SizedBox(height: 20.0),
              TeamCard(
                name: 'Rishu Kumar',
                deignation: 'Android Lead',
                imgUrl: 'rishu',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeamCard extends StatelessWidget {
  final String name;
  final String deignation;
  final String imgUrl;

  TeamCard({
    @required this.name,
    @required this.deignation,
    @required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      height: 125,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white30,
        //  color: Colors.blueAccent,
        //color: Colors.purple,
        //color: Color.fromRGBO(25, 37, 46, 0.1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // SizedBox(width: 30.0),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: CircleAvatar(
              radius: 60.0,
              backgroundColor: Colors.red,
              // child: CircleAvatar(
              //   radius: 45.0,
              //   backgroundImage: AssetImage(
              //     'assets/$imgUrl.jpg',
              //   ),
              // ),
            ),
          ),
          // SizedBox(width: 30.0),
          Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  deignation,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(FontAwesomeIcons.linkedin),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.facebook),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.instagram),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Material(
//                       color: Colors.transparent,
//                       child: InkWell(
//                         child: Icon(
//                           Icons.ac_unit_outlined,
//                           color: Colors.yellow,
//                           size: 30.0,
//                         ),
//                         splashColor: Colors.yellow,
//                         highlightColor: Colors.red,
//                         onTap: () {},
//                       ),
//                     )
