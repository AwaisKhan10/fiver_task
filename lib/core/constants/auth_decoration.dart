import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furr_app/core/constants/colors.dart';
import 'package:furr_app/core/constants/text_style.dart';

final authFieldDecoration = InputDecoration(
  hintText: "Enter your email",
  hintStyle:
      subheading16.copyWith(color: whiteColor, fontWeight: FontWeight.normal),
  prefixIconColor: lightGreyColor,
  suffixIconColor: lightGreyColor,
  fillColor: Color(0xff353535),
  filled: true,
  contentPadding: const EdgeInsets.all(15),
  border: InputBorder.none,
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent, width: 1.0),
      borderRadius: BorderRadius.circular(40.r)),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent, width: 1.0),
      borderRadius: BorderRadius.circular(40.r)),
  errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent, width: 1.0),
      borderRadius: BorderRadius.circular(40.r)),
  disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent, width: 1.0),
      borderRadius: BorderRadius.circular(40.r)),
  focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent, width: 1.0),
      borderRadius: BorderRadius.circular(40.r)),
);
