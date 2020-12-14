import 'package:dsc_oist/widgets/team_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  style: GoogleFonts.raleway(
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
                  TeamCardItems(
                    name: 'Rishu Kumar',
                    designation: 'Android Lead',
                    imageUrl: 'assets/rishu.jpg',
                  ),
                  TeamCardItems(
                    name: 'Rishu Kumar',
                    designation: 'Android Lead',
                    imageUrl: 'assets/rishu.jpg',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TeamCardItems(
                    name: 'Rishu Kumar',
                    designation: 'Android Lead',
                    imageUrl: 'assets/rishu.jpg',
                  ),
                  TeamCardItems(
                    name: 'Rishu Kumar',
                    designation: 'Android Lead',
                    imageUrl: 'assets/rishu.jpg',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
