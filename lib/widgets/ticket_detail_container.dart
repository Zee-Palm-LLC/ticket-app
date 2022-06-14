import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sec_task/widgets/dotted_lines_widget.dart';

import '../data/constants.dart';
import '../data/typography.dart';

class TicketContainer extends StatelessWidget {
  const TicketContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kfullRadius),
            color: kWhitePrimary,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.h,
              horizontal: 15.w,
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.rounded_corner_outlined,
                          color: kPinkColor,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text("New York",
                            style:
                                kInputStyle.copyWith(color: kGreyBackground)),
                      ],
                    ),
                    const CustomDottedline(),
                    Column(
                      children: [
                        const Icon(
                          Icons.place_outlined,
                          color: kPinkColor,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "12H",
                          style: kInputStyle.copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                    const CustomDottedline(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Icon(Icons.add_box),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text("Great Britian",
                            style:
                                kInputStyle.copyWith(color: kGreyBackground)),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Text(
                      "10:40am",
                      style: kInputStyle.copyWith(
                          color: kBlack, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Text(
                      "12:40pm",
                      style: kInputStyle.copyWith(
                          color: kBlack, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      "4.26.2021,Tue",
                      style: kInputStyle.copyWith(color: kGreyBackground),
                    ),
                    const Spacer(),
                    Text(
                      "4.27.2021,Wed",
                      style: kInputStyle.copyWith(color: kGreyBackground),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 70.h,
          decoration: BoxDecoration(
              color: kWhitePrimary, borderRadius: BorderRadius.circular(20.r)),
          child: Column(
            children: [
              const NewDottedline(),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20.h,
                  horizontal: 10.w,
                ),
                child: Row(
                  children: [
                    const Icon(Icons.air),
                    Text(
                      "American Airlines",
                      style: kInputStyle.copyWith(color: kGreyBackground),
                    ),
                    const Spacer(),
                    Text(
                      "Rs120",
                      style: kInputStyle.copyWith(
                          color: kBlack, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
