import 'package:flutter/material.dart';

class NewTeam extends StatelessWidget {
  static String routeName = 'new-team';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(25, 37, 46, 1),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TeamCardItems(
                    name: 'Rishu Kumar',
                    designation: 'Android Lead',
                    imageUrl: 'assets/rishu.jpg',
                  ),
                  // TeamCardItems(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //  TeamCardItems(),
                  //TeamCardItems(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //  TeamCardItems(),
                  //  TeamCardItems(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TeamCardItems extends StatelessWidget {
  final String name;
  final String designation;
  final String imageUrl;

  const TeamCardItems({Key key, this.name, this.designation, this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white70,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            CircleAvatar(
              radius: 45.0,
              backgroundImage: AssetImage(imageUrl),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              designation,
              style: TextStyle(fontSize: 14.0),
            ),
            Row(
              children: [
                IconButton(icon: Icon(Icons.inbox), onPressed: () {}),
                IconButton(icon: Icon(Icons.inbox), onPressed: () {}),
              ],
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
