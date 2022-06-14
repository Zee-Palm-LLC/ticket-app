import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sec_task/Screens/main_Screen.dart';
import 'package:sec_task/data/constants.dart';
import 'package:sec_task/data/typography.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/HD-wallpaper-sunset-aeroplane-air-clouds-plane.png",
              ),
              fit: BoxFit.cover),
          //borderRadius: BorderRadius.circular(25.r),
        ),
        child: Stack(children: [
          Positioned(
            left: 35.w,
            bottom: 50.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Travel with \ncomfort and \nsafety!",
                  style: kLargeTextStyke.copyWith(
                      color: kWhitePrimary, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 90.h,
                  width: 160.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(
                        () => const MainScreen(),
                        transition: Transition.downToUp,
                      );
                    },
                    child: Text("Sign up",
                        style: kLTextStyke.copyWith(
                          color: kWhitePrimary,
                          fontWeight: kBoldFontWeight,
                        )),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kRedColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(kRadius),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
