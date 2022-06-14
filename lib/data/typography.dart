import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle get kLargeTextStyke => TextStyle(fontSize: ScreenUtil().setSp(55));
TextStyle get kLTextStyke => TextStyle(fontSize: ScreenUtil().setSp(24));
TextStyle get kExtraVerySmallTextStyke =>
    TextStyle(fontSize: ScreenUtil().setSp(6));
TextStyle get kInputStyle => TextStyle(fontSize: ScreenUtil().setSp(17));
TextStyle get kCityStyle => TextStyle(fontSize: ScreenUtil().setSp(20));
TextStyle get kPrizeStyleDevice => TextStyle(fontSize: ScreenUtil().setSp(15));
TextStyle get ktickethead => TextStyle(fontSize: ScreenUtil().setSp(40));
TextStyle get kMainhead => TextStyle(fontSize: ScreenUtil().setSp(30));

const FontWeight kBoldFontWeight = FontWeight.bold;
const FontWeight kRegularFontWeight = FontWeight.normal;
const FontWeight kLightFontWeight = FontWeight.w400;
const FontWeight kThinFontWeight = FontWeight.w100;

List<BoxShadow> boxshadow = [
  BoxShadow(
    color: Colors.grey.withOpacity(0.3),
    spreadRadius: 2,
    blurRadius: 3,
    offset: Offset(1, 3), // changes position of shadow
  )
];
