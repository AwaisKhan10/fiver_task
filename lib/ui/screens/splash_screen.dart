import 'package:flutter/material.dart';
import 'package:furr_app/core/constants/strings.dart';
import 'package:furr_app/ui/screens/auth/sign_up_screen.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  ///
  /// Duration
  ///
  init() async {
    await Future.delayed(Duration(seconds: 3));

    Get.offAll(() => SignUpScreen());
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        ///
        /// Start Body
        ///
        body: SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Image.asset(
        "$static_assets/splash.png",
        fit: BoxFit.cover,
      ),
    ));
  }
}
