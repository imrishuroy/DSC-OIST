import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoading extends StatelessWidget {
  static String routeName = '/shimmer-loading';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        color: Colors.white70,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Column(
          children: [
            SizedBox(height: 100),
            ShimmerEffect(),
            SizedBox(height: 15.0),
            ShimmerEffect(),
            SizedBox(height: 15.0),
            ShimmerEffect(),
            SizedBox(height: 15.0),
            ShimmerEffect(),
          ],
        ),
      ),
    );
  }
}

class ShimmerEffect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Shimmer.fromColors(
          // period: Duration(seconds: 5),
          baseColor: Colors.white70,
          highlightColor: Colors.blue,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 15),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                  ),
                  elevation: 0.0,
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
