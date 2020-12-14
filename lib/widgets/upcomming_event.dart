import 'package:flutter/material.dart';

class UpcommingEvent extends StatelessWidget {
  // final List<Widget> upcommingEvents = [
  //   eventContainer(imageUrl: 'study.jpeg', date: ''),
  //   Center(
  //     child: Text(
  //       'Something awesome is commming!',
  //       style: TextStyle(
  //         fontSize: 16.0,
  //         color: Colors.white,
  //       ),
  //     ),
  //   )
  // ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(20.0),
          height: 200.0,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/study.jpeg',
              ),
            ),
          ),
        ),
        Text(
          'Something awesome is commming!',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

//     ListView.builder(
//       itemCount: upcommingEvents.length,
//       itemBuilder: (ctx, index) => upcommingEvents[index],
//     );
//   }
// }
