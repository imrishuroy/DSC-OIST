import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:carousel_slider/carousel_controller.dart';

class CaraoselExperiment extends StatelessWidget {
  static String routeName = 'CaraoselExperiment';
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('carousel/pqGZg1R92aSkHOS8DVcl/images')
          .snapshots(),
      builder: (ctx, snapshot) {
        return CarouselSlider();
      },
    );
  }
}
