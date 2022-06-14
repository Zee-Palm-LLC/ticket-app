import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sec_task/data/constants.dart';

import '../data/typography.dart';

class ChoiceChipwidget extends StatefulWidget {
  const ChoiceChipwidget({Key? key}) : super(key: key);

  @override
  State<ChoiceChipwidget> createState() => _ChoiceChipwidgetState();
}

class _ChoiceChipwidgetState extends State<ChoiceChipwidget> {
  List<String>? _choices;
  int? _defaultChoiceIndex;
  Color? icolor;

  @override
  void initState() {
    _choices = ['All', 'Flight', 'Cruise', 'Train', 'Bus'];
    _defaultChoiceIndex = 0;
    icolor = Colors.grey;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _choices!.length,
        itemBuilder: (BuildContext context, int index) {
          return ChoiceChip(
              labelPadding:
                  EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
              label: Text(_choices![index],
                  style: kCityStyle.copyWith(
                      color:
                          _defaultChoiceIndex == index ? Colors.white : icolor,
                      fontWeight: FontWeight.w400)),
              selected: _defaultChoiceIndex == index,
              selectedColor: kPinkColor,
              backgroundColor: kGreyOutlined,
              onSelected: (bool selected) {
                setState(() {
                  _defaultChoiceIndex = selected ? index : 0;
                });
              });
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 10.w,
          );
        },
      ),
    );
  }
}
