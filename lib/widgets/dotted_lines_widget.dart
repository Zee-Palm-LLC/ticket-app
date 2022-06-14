import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_line/dotted_line.dart';

import '../data/constants.dart';

class CustomDottedline extends StatelessWidget {
  const CustomDottedline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: DottedLine(
        direction: Axis.horizontal,
        lineThickness: 1.0,
        lineLength: double.infinity,
        dashLength: 4.0,
        dashColor: kgreytextfeild,
        dashRadius: 0.0,
        dashGapLength: 4.0,
        dashGapColor: Colors.transparent,
        dashGapRadius: 0.0,
      ),
    );
  }
}

class NewDottedline extends StatelessWidget {
  const NewDottedline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DottedLine(
        direction: Axis.horizontal,
        lineThickness: 1.0,
        lineLength: 340.w,
        dashLength: 4.0,
        dashColor: kgreytextfeild,
        dashRadius: 0.0,
        dashGapLength: 4.0,
        dashGapColor: Colors.transparent,
        dashGapRadius: 0.0,
      ),
    );
  }
}
