import 'package:flutter/material.dart';

class DomainBloc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 25.0),
          height: 220,
          width: 10,
          color: Colors.blue,
        ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DomainRow(
              domainTitle: 'Android',
              color: Colors.red,
            ),
            DomainRow(
              domainTitle: 'Web',
              color: Colors.yellow,
            ),
            DomainRow(
              domainTitle: 'CP',
              color: Colors.deepPurple,
            ),
            DomainRow(
              domainTitle: 'DevOps',
              color: Colors.green,
            ),
          ],
        ),
      ],
    );
  }
}

class DomainRow extends StatelessWidget {
  final String domainTitle;
  final Color color;

  const DomainRow({Key key, this.domainTitle, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.0),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 25.0),
              height: 5,
              width: 100,
              color: color,
            ),
            SizedBox(width: 20.0),
            Text(
              domainTitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}
