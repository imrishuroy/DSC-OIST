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
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                child: TweenAnimationBuilder(
                  curve: Curves.easeIn,
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
                  tween: Tween(begin: 0.0, end: 1.0),
                  duration: Duration(seconds: 1),
                  builder: (context, value, child) {
                    return Opacity(
                      opacity: value,
                      child: Padding(
                        padding: EdgeInsets.only(top: value * 10),
                        child: child,
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  '"Any individual can\'t create a community. Every community that ever existed started with sharing ! " ',
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
                  TeamCard(
                    name: 'Suhani Sinha',
                    about:
                        'Suhani is an optimistic, lively person to be around. She is a passionate leader dedicated to creating an impact in the community by helping her peers learn and connect.',
                    avatar: 'assets/images/girl.png',
                    designation: 'DSC Lead',
                    imageUrl: 'assets/suhani.jpeg',
                    instaUrl: 'https://www.instagram.com/suhanisinhahaha/',
                    linkdInUrl: 'https://www.linkedin.com/in/suhani-sinha/',
                  ),
                  TeamCard(
                    name: 'Vaishali Raut',
                    about:
                        'Vaishali is sweet, calm, and in general, a lovely person who loves to do yoga. She is interested in Cloud Computing and is probably the first AWS Certified Cloud Practitioner in our College.',
                    avatar: 'assets/images/tech-women.png',
                    designation: 'Women-in-Tech Lead',
                    imageUrl: 'assets/vaishali.jpeg',
                    linkdInUrl: 'https://www.linkedin.com/in/vaishali-raut/',
                    instaUrl: 'https://www.instagram.com/_vaishaliraut_/',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TeamCard(
                    about:
                        'Bhupinder is an energetic guy who is curious about ed-tech products and platforms. He can code in multiple languages and like to read books in his free time.',
                    avatar: 'assets/images/technical.png',
                    name: 'Bhupinder Singh',
                    designation: 'Technical Lead',
                    imageUrl: 'assets/bhupinder.jpeg',
                    linkdInUrl:
                        'https://www.linkedin.com/in/bhupinder-singh-359867165/',
                    instaUrl: 'https://www.instagram.com/singh._harsh/',
                  ),
                  TeamCard(
                    about:
                        'Sargun is someone who prefers books as his first resource. He is a python developer and a Linux lover also develops web applications using flask.',
                    avatar: 'assets/images/sargun-avtar.png',
                    name: 'Sargun Singh Narula',
                    designation: 'Management Lead',
                    imageUrl: 'assets/sargun.jpeg',
                    linkdInUrl:
                        'https://www.linkedin.com/in/sargun-narula-8708511a6/',
                    instaUrl: 'https://www.instagram.com/sar.gun007/',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TeamCard(
                    about:
                        'Vikrant is a football fan but also likes to read books. He is efficient and knows how to get the work done. Interested in Machine Learning, he loves to work on Python.',
                    avatar: 'assets/images/working.png',
                    name: 'Vikrant Singh Tomer',
                    designation: 'PR Lead',
                    imageUrl: 'assets/vikrant.jpeg',
                    linkdInUrl:
                        'https://www.linkedin.com/in/vikrantsinghtomar14071999/',
                    instaUrl: 'https://www.instagram.com/_.v.i.k.r.a.n.t._/',
                  ),
                  TeamCard(
                    about:
                        'Abhas is the most creative guy in the team. He is well versed with graphics designing and his skills speaks for itself as he has worked with GDG Bhopal.',
                    avatar: 'assets/images/graphic-designer.png',
                    name: 'Abhas Asati',
                    designation: 'Design Lead',
                    imageUrl: 'assets/abhas.png',
                    linkdInUrl: 'https://www.linkedin.com/in/abhasasati/',
                    instaUrl: 'https://www.instagram.com/abhas_asati/',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TeamCard(
                    about:
                        'Rishu is an inquisitive and self-motivated person. He is an Android and iOS developer, currently working on Flutter.',
                    avatar: 'assets/images/rishu-avtar.png',
                    name: 'Rishu Kumar',
                    designation: 'Android Lead',
                    imageUrl: 'assets/rishu.jpg',
                    linkdInUrl: 'https://www.linkedin.com/in/imrishuroy/',
                    instaUrl: 'https://www.instagram.com/imrishuroy/',
                  ),
                  TeamCard(
                    about:
                        'Shashank is a technology enthusiast who has been into web development for a long time. Currently, he is working as a React Developer in a startup based in Bhopal.',
                    avatar: 'assets/images/programing.png',
                    name: 'Shashank Gupta',
                    designation: 'Web Dev Lead',
                    imageUrl: 'assets/shashank.jpeg',
                    linkdInUrl: 'https://www.linkedin.com/in/shashankgupta02/',
                    instaUrl: 'https://www.instagram.com/shashank0201/',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TeamCard(
                    about:
                        'Pranav has been working on DevOps, Linux, and Python for quite a few months now. He is also into mobile app development using Flutter and is very much interested in Google Cloud Platform.',
                    avatar: 'assets/images/hacker.png',
                    name: 'Pranav Chaturvedi',
                    designation: 'Cloud & DevOps Lead',
                    imageUrl: 'assets/pranav.jpeg',
                    linkdInUrl:
                        'https://www.linkedin.com/in/pranav-chaturvedi99/',
                    instaUrl: 'https://www.instagram.com/framesxpc/',
                  ),
                  TeamCard(
                    about:
                        ' Rohit loves competitive programming and is actually good at what he does.He is also among the very few people in 2nd year who cracked the pre-qualifier round of TCS Codevita 9.',
                    avatar: 'assets/images/programmer.png',
                    name: 'Rohit Jain',
                    designation: 'DSA/CP Lead',
                    imageUrl: 'assets/rohit.jpeg',
                    linkdInUrl: 'https://www.linkedin.com/in/rohitjain0301/',
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
