import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furr_app/core/constants/colors.dart';
import 'package:furr_app/ui/screens/splash_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
          MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height),
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Furry App',
          theme: ThemeData(
            appBarTheme: AppBarTheme(backgroundColor: blackColor),
            scaffoldBackgroundColor: blackColor,
            colorScheme: ColorScheme.fromSeed(seedColor: blackColor),
            useMaterial3: true,
          ),
          home: const SplashScreen()),
    );
  }
}
