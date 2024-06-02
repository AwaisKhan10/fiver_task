// ignore_for_file: use_key_in_widget_constructors, unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furr_app/core/constants/auth_decoration.dart';
import 'package:furr_app/core/constants/colors.dart';
import 'package:furr_app/core/constants/strings.dart';
import 'package:furr_app/core/constants/text_style.dart';
import 'package:furr_app/core/enums/view_state.dart';
import 'package:furr_app/ui/custom_widgets/buttons/custom_back_button.dart';
import 'package:furr_app/ui/custom_widgets/buttons/custom_button.dart';
import 'package:furr_app/ui/screens/auth/sign_up_view_model.dart';
import 'package:furr_app/ui/screens/home/home_screen.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignUpViewModel(),
      child: Consumer<SignUpViewModel>(builder: (context, model, child) {
        return ModalProgressHUD(
          inAsyncCall: model.state == ViewState.busy,
          // progressIndicator: CustomLoader(),

          child: Scaffold(
            ///
            /// Start Body
            ///
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
                child: Form(
                  key: _formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomBackButton(
                          color: whiteColor,
                        ),

                        Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "$static_assets/logo_login.png",
                            scale: 2,
                          ),
                        ),

                        Center(
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                  backgroundColor: Color(0xff353535),
                                  radius: 45.r,
                                  child: Icon(
                                    Icons.image,
                                    size: 30.sp,
                                    color: whiteColor,
                                  )),
                              InkWell(
                                onTap: () {
                                  // model.profileImage();
                                },
                                child: CircleAvatar(
                                  radius: 12.r,
                                  backgroundColor: Colors.yellow,
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      size: 22.sp,
                                      color: blackColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),

                        ///
                        /// Username
                        ///
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Pet's Name",
                                style: heading16.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            TextFormField(
                              style: heading16.copyWith(color: whiteColor),
                              keyboardType: TextInputType.name,
                              validator: (val) {
                                if (val.toString().trim().isEmpty) {
                                  return 'Please Enter your pet Name';
                                } else {
                                  return null;
                                }
                              },
                              onChanged: (value) {
                                // model.appUser.name = value;
                              },
                              decoration: authFieldDecoration.copyWith(
                                  hintText: "Your Pet's Name"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),

                        ///
                        /// E-mail
                        ///
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Username",
                                style: heading16.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            TextFormField(
                              style: heading16.copyWith(color: whiteColor),
                              keyboardType: TextInputType.emailAddress,
                              validator: (val) {
                                if (val.toString().trim().isEmpty) {
                                  return 'Please Enter a valid Username';
                                } else {
                                  return null;
                                }
                              },
                              onChanged: (value) {
                                // model.appUser.email = value;
                              },
                              decoration: authFieldDecoration.copyWith(
                                  hintText: 'Choose a Username'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),

                        ///
                        /// Your Location
                        ///
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Choose Your Location",
                                style: heading16.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            TextFormField(
                              style: heading16.copyWith(color: whiteColor),
                              validator: (val) {
                                if (val.toString().trim().isEmpty) {
                                  return 'Please Enter a Your Location';
                                } else {
                                  return null;
                                }
                              },
                              onChanged: (value) {
                                // model.appUser.yourCity = value;
                              },
                              decoration: authFieldDecoration.copyWith(
                                  hintText: 'Location'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),

                        /// Custom Button
                        ///
                        CustomButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // if (model.authService.appUser.imgUrl == null) {
                              //   Get.snackbar("Message",
                              //       "Please upload a profile image to proceed.");
                              // } else {
                              //   model.signUpWithEmail();
                              // }

                              Get.offAll(() => HomeScreen());
                            }
                          },
                          boxColor: Colors.yellowAccent,
                          textColor: blackColor,
                          text: 'Continue',
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                      ]),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
