import 'package:dsc_oist/widgets/team_card.dart';
import 'package:flutter/material.dart';

class TeamScreen extends StatelessWidget {
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
                    fontFamily: 'Raleway',
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
                    name: 'Suhani Sinha',
                    designation: 'DSC Lead',
                    imageUrl: 'assets/suhani.jpeg',
                    instaUrl: 'https://www.instagram.com/suhanisinhahaha/',
                    linkdinUrl: 'https://www.linkedin.com/in/suhani-sinha/',
                  ),
                  TeamCardItems(
                    name: 'Vaishali Raut',
                    designation: 'Women-in-Tech Lead',
                    imageUrl: 'assets/vaishali.jpeg',
                    linkdinUrl: 'https://www.linkedin.com/in/vaishali-raut/',
                    instaUrl: 'https://www.instagram.com/_vaishaliraut_/',
                  ),
                  // TeamCardItems(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TeamCardItems(
                    name: 'Bhupinder Singh',
                    designation: 'Technical Lead',
                    imageUrl: 'assets/bhupinder.jpeg',
                    linkdinUrl:
                        'https://www.linkedin.com/in/bhupinder-singh-359867165/',
                    instaUrl: 'https://www.instagram.com/singh._harsh/',
                  ),
                  TeamCardItems(
                    name: 'Sargun Singh Narula',
                    designation: 'Management Lead',
                    imageUrl: 'assets/sargun.jpeg',
                    linkdinUrl:
                        'https://www.linkedin.com/in/sargun-narula-8708511a6/',
                    instaUrl: 'https://www.instagram.com/sar.gun007/',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TeamCardItems(
                    name: 'Vikrant Singh Tomer',
                    designation: 'PR Lead',
                    imageUrl: 'assets/vikrant.jpeg',
                    linkdinUrl:
                        'https://www.linkedin.com/in/vikrantsinghtomar14071999/',
                    instaUrl: 'https://www.instagram.com/_.v.i.k.r.a.n.t._/',
                  ),
                  TeamCardItems(
                    name: 'Abhas Asati',
                    designation: 'Design Lead',
                    imageUrl: 'assets/abhas.png',
                    linkdinUrl: 'https://www.linkedin.com/in/abhasasati/',
                    instaUrl: 'https://www.instagram.com/abhas_asati/',
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
                    linkdinUrl: 'https://www.linkedin.com/in/imrishuroy/',
                    instaUrl: 'https://www.instagram.com/imrishuroy/',
                  ),
                  TeamCardItems(
                    name: 'Sashank Gupta',
                    designation: 'Web Dev Lead',
                    imageUrl: 'assets/shashank.jpeg',
                    linkdinUrl: 'https://www.linkedin.com/in/shashankgupta02/',
                    instaUrl: 'https://www.instagram.com/shashank0201/',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TeamCardItems(
                    name: 'Pranav Chaturvedi',
                    designation: 'Cloud & DevOps Lead',
                    imageUrl: 'assets/pranav.jpeg',
                    linkdinUrl:
                        'https://www.linkedin.com/in/pranav-chaturvedi99/',
                    instaUrl: 'https://www.instagram.com/framesxpc/',
                  ),
                  TeamCardItems(
                    name: 'Rohit Jain',
                    designation: 'DSA/CP Lead',
                    imageUrl: 'assets/rohit.jpeg',
                    linkdinUrl: 'https://www.linkedin.com/in/rohitjain0301/',
                    instaUrl: 'https://www.instagram.com/_r.o.h.i.t_j.a.i.n/',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
