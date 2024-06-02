// ignore_for_file: use_key_in_widget_constructors, unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furr_app/core/constants/auth_decoration.dart';
import 'package:furr_app/core/constants/colors.dart';
import 'package:furr_app/core/constants/strings.dart';
import 'package:furr_app/core/constants/text_style.dart';
import 'package:furr_app/core/enums/view_state.dart';
import 'package:furr_app/core/others/screen_utils.dart';
import 'package:furr_app/ui/screens/home/home_view_model.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(),
      child: Consumer<HomeViewModel>(builder: (context, model, child) {
        return ModalProgressHUD(
          inAsyncCall: model.state == ViewState.busy,
          // progressIndicator: CustomLoader(),

          child: Scaffold(
            ///
            /// Start Body
            ///
            body: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    ///
                    /// Profile
                    ///
                    _profile(),
                    SizedBox(
                      height: 30.h,
                    ),

                    ///
                    ///  Popular pet workouts Detail
                    ///
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Popular pet workouts",
                            style: heading16.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20.sp),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                size: 20.sp,
                                color: whiteColor,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 20.sp,
                                color: whiteColor,
                              )
                            ],
                          )
                        ],
                      ),
                    ),

                    ///
                    /// List Popular Workout
                    ///
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SizedBox(
                        height: 250,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 10),
                                alignment: Alignment.bottomCenter,
                                width: 380,
                                height: 200,
                                child: _popularWorkout(context));
                          },
                        ),
                      ),
                    ),

                    ///
                    /// Grid View
                    ///
                    ///
                    ///  Popular pet workouts Detail
                    ///
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Quick workout for your pet",
                            style: heading16.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20.sp),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                size: 20.sp,
                                color: whiteColor,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 20.sp,
                                color: whiteColor,
                              )
                            ],
                          )
                        ],
                      ),
                    ),

                    ///
                    /// Quick Workout list
                    ///
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: GridView.builder(
                          itemCount: 6,
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10,
                                  crossAxisCount: 2),
                          itemBuilder: ((context, index) {
                            return _quickWorkout(context);
                          })),
                    ),

                    SizedBox(
                      height: 30.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

_profile() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(25.0, 40.0, 25.0, 0),
    child: Column(
      children: [
        Row(
          children: [
            CircleAvatar(
                backgroundColor: lightGreyColor,
                radius: 25.r,
                child: Icon(
                  Icons.person_outline,
                  size: 30.sp,
                  color: whiteColor,
                )),
            SizedBox(
              width: 20.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome to Furry Care,",
                  style: heading16.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.sp),
                ),
                Text(
                  "Your pet's health at a glance",
                  style: heading16.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w400),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 10..h,
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: lightGreyColor, borderRadius: BorderRadius.circular(20.r)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Monitor Your pet'sactivity and health",
                style: heading16.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Stay on track with you pet's health goals",
                style: heading16.copyWith(
                    color: Colors.white, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20.h,
              ),

              ///
              /// Linear Percent Indicator
              ///
              LinearPercentIndicator(
                // padding: EdgeInsets.zero,
                lineHeight: 10.0,
                backgroundColor: blackColor,
                percent: 0.7,
                progressColor: Colors.yellow,
                barRadius: const Radius.circular(10),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10..h,
        ),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: authFieldDecoration.copyWith(
                    hintText: 'Search for a pet',
                    prefixIcon: const Icon(
                      Icons.search,
                      color: whiteColor,
                    )),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),

            ///
            /// Filter
            ///
            CircleAvatar(
                backgroundColor: whiteColor,
                radius: 25.r,
                child: Image.asset(
                  "$icon_assets/filter1.png",
                  scale: 3,
                  fit: BoxFit.cover,
                )),
          ],
        )
      ],
    ),
  );
}

Widget _popularWorkout(BuildContext context) {
  return Stack(
    alignment: Alignment.bottomCenter,
    children: [
      ///
      /// Image
      ///
      Stack(alignment: Alignment.topCenter, children: [
        Container(
          height: 250,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("$dynmaic_assets/pet.png"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(20.r)),
                child: Text(
                  "Upgrade",
                  style: heading16.copyWith(fontSize: 12.sp),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(20.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.star_border,
                      color: blackColor,
                      size: 16.sp,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "4.9",
                      style: heading16.copyWith(fontSize: 14.sp),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),

      ///
      /// upgrade and rating
      ///
      Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
            color: lightGreyColor, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Monitor Your pet'sactivity and health",
                style: heading16.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Stay on track with you pet's health goals",
                style: heading16.copyWith(
                    color: Colors.white, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      )
    ],
  );
}

Widget _quickWorkout(BuildContext context) {
  return Stack(
    alignment: Alignment.bottomCenter,
    children: [
      ///
      /// Image
      ///
      Stack(alignment: Alignment.topRight, children: [
        Container(
          height: 250,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("$dynmaic_assets/pet.png"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20)),
        ),
        Container(
          width: 70.w,
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: whiteColor, borderRadius: BorderRadius.circular(20.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.star_border,
                color: blackColor,
                size: 16.sp,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "4.9",
                style: heading16.copyWith(fontSize: 14.sp),
              ),
            ],
          ),
        ),
      ]),

      ///
      /// upgrade and rating
      ///
      Container(
        height: 80.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: lightGreyColor, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Strenthen your",
                style: heading16.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Trainer: leanardo de arp",
                style: heading16.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp),
              ),
            ],
          ),
        ),
      )
    ],
  );
}
