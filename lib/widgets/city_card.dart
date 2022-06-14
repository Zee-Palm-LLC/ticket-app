import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sec_task/Model/city_model.dart';
import 'package:sec_task/Screens/booking_detail_Screen.dart';
import 'package:sec_task/data/constants.dart';
import 'package:get/get.dart';

import '../data/typography.dart';

class CityCard extends StatelessWidget {
  final Cities city;
  const CityCard({
    Key? key,
    required this.city,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Get.to(
              () => BookingDetail(
                    city: city,
                  ),
              transition: Transition.downToUp
              //
              );
        },
        child: Hero(
          tag: city.imagePath,
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      city.imagePath,
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: Stack(children: [
                Positioned(
                  left: 10.h,
                  bottom: 20.h,
                  child: Text(
                    city.cityName,
                    style: kCityStyle.copyWith(
                        color: kWhitePrimary, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                    right: 10.w,
                    bottom: 15.h,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kfullRadius),
                        color: kWhitePrimary,
                      ),
                      height: 40.h,
                      width: 60.w,
                      child: Center(
                          child: Text("\$${city.priceInDollars}".toString(),
                              style: kPrizeStyleDevice.copyWith(
                                  color: kBlack, fontWeight: FontWeight.w500))),
                    )),
              ])),
        ));
  }
}
// Column(
//   children: [
//     SizedBox(
//       height: 160.h,
//     ),
//     Row(
//       children: [
//         SizedBox(
//           width: 10.w,
//         ),
//         Text(
//           city.cityName,
//           style: kCityStyle.copyWith(
//               color: kWhitePrimary, fontWeight: FontWeight.bold),
//         ),
//         Spacer(),
//         Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(kfullRadius),
//             color: Colors.white,
//           ),
//           height: 40.h,
//           width: 60.w,
//           child: Center(
//               child: Text(city.priceInDollars.toString(),
//                   style: kPrizeStyleDevice.copyWith(
//                       color: kBlack, fontWeight: FontWeight.w500))),
//         )
//       ],
//     )
//              ],
//           // ),
//         //)
//         );
//   }
// }

//       Card(
//         shape: RoundedRectangleBorder(
// //           borderRadius: BorderRadius.circular(kfullRadius),
// //         ),
//         child: Stack(
//           children: [
//             Container(
//               decoration: BoxDecoration(

//               ),
//             )
//             Image.asset(
//               city.imagePath,
//               //fit: BoxFit.fitHeight,
//             ),
//             Positioned(
//               left: 10.w,
//               bottom: 20.h,
//               child: Text(
//                 city.cityName,
//                 style: kCityStyle.copyWith(
//                     color: kWhitePrimary, fontWeight: FontWeight.bold),
//               ),
//             ),
//             Positioned(
//                 right: 10.w,
//                 bottom: 15.h,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(kfullRadius),
//                     color: Colors.white,
//                   ),
//                   height: 40.h,
//                   width: 60.w,
//                   child: Center(
//                       child: Text(city.priceInDollars.toString(),
//                           style: kPrizeStyleDevice.copyWith(
//                               color: kBlack, fontWeight: FontWeight.w500))),
//                 )),
//           ],
//         ),
//       ),
// //     );
// //   }
