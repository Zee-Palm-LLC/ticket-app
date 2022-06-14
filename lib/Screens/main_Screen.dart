import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sec_task/Model/city_model.dart';

import 'package:sec_task/data/constants.dart';

import '../data/typography.dart';
import '../widgets/choice_chip.dart';
import '../widgets/city_card.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhitePrimary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 45.h, bottom: 10.h, left: 20.w, right: 20.h),
            child: Text(
              "What Would \nyou like to travel?",
              style: kMainhead.copyWith(
                  color: kBlack, fontWeight: kBoldFontWeight),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            decoration: BoxDecoration(
                color: kGreyOutlined,
                borderRadius: BorderRadius.circular(kfullRadius)),
            child: Center(
              child: TextFormField(
                autofocus: false,
                cursorHeight: 15.h,
                cursorColor: Colors.grey,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  border: InputBorder.none,
                  hintText: 'Search',
                  suffixIcon: Icon(Icons.search),
                  suffixIconColor: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: const ChoiceChipwidget(),
          ),
          Expanded(
            child: GridView.custom(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              gridDelegate: SliverWovenGridDelegate.count(
                crossAxisCount: 2,
                mainAxisSpacing: 1,
                crossAxisSpacing: 2,
                pattern: [
                  WovenGridTile(1),
                  WovenGridTile(
                    5 / 7,
                    crossAxisRatio: 0.9,
                    alignment: AlignmentDirectional.centerEnd,
                  ),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                  (context, index) => CityCard(
                        city: citiesList[index],
                      ),
                  childCount: citiesList.length),
            ),
          )
        ],
      ),
    );
  }
}
