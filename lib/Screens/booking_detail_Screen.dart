import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sec_task/Model/city_model.dart';

import '../data/constants.dart';
import '../data/typography.dart';
import '../widgets/ticket_detail_container.dart';

class BookingDetail extends StatelessWidget {
  final Cities city;
  const BookingDetail({Key? key, required this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: city.imagePath,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      city.imagePath,
                    ),
                    fit: BoxFit.cover),
                //borderRadius: BorderRadius.circular(25.r),
              ),
            ),
          ),
          Positioned(
              top: 50.h,
              left: 15.w,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const CircleAvatar(
                  backgroundColor: kWhitePrimary,
                  child: Icon(Icons.arrow_back),
                ),
              )),
          Positioned(
            bottom: 0,
            child: Container(
              height: size.height * 0.7,
              width: size.width,
              decoration: BoxDecoration(
                color: kWhiteOpacity,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kContainerRadius),
                  topRight: Radius.circular(kContainerRadius),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                child: Column(
                  children: [
                    Container(
                      height: 100.h,
                      width: 100.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.h,
                      ),
                      child: Text(
                        "2 Tickets",
                        style: ktickethead.copyWith(
                            color: kBlack, fontWeight: kBoldFontWeight),
                      ),
                    ),
                    Expanded(
                      child: ListView.separated(
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) {
                          return const TicketContainer();
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 10.h,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // body: ,
    );
  }
}
