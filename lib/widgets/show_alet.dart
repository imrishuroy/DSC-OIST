import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> showAlertDialog({
  BuildContext context,
}) async {
  return await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Column(
        children: [
          SizedBox(height: 5.0),
          Row(
            children: [
              Container(
                height: 40.0,
                width: 100.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/dsc-logo.png'),
                  ),
                ),
              ),
              Divider(),
              Text(
                'DSC OIST',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              )
            ],
          ),
          Text(
            'Get to know everyting about DSC OIST',
            style: TextStyle(
              fontSize: 12.0,
            ),
          )
        ],
      ),
      content: Text(''),
      actions: [
        FlatButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(''),
        )
      ],
    ),
  );
}
