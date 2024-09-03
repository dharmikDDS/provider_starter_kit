import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

final appBarTitleStyle = TextStyle(
  fontFamily: 'Your prefered text family',
  fontWeight: FontWeight.bold,
  fontSize: 17.sp,
);
final textStyle16SemiBold = TextStyle(
  fontFamily: 'Your prefered text family',
  fontWeight: FontWeight.w600,
  fontSize: 16.sp,
);
final textStyle16Bold = TextStyle(
  fontFamily: 'Your prefered text family',
  fontWeight: FontWeight.bold,
  fontSize: 16.sp,
);
final textStyle16 = TextStyle(
  fontFamily: 'Your prefered text family',
  fontSize: 16.sp,
);
final textStyle14 = TextStyle(
  fontFamily: 'Your prefered text family',
  fontSize: 14.sp,
);
final textStyle14SemiBold = TextStyle(
  fontFamily: 'Your prefered text family',
  fontSize: 14.sp,
  fontWeight: FontWeight.w600,
);

final textStyle12 = TextStyle(
  fontFamily: 'Your prefered text family',
  fontSize: 12.sp,
);

final textStyle18SemiBold = TextStyle(
    fontFamily: 'Your prefered text family',
    fontSize: 18.sp,
    fontWeight: FontWeight.w600);

final textStyle20SemiBold = TextStyle(
  fontFamily: 'Your prefered text family',
  fontSize: 20.sp,
  fontWeight: FontWeight.w600,
);

final primaryTextButtonTheme = TextButton.styleFrom(
  backgroundColor: AppColors.primaryColor,
  foregroundColor: Colors.white,
  // fixedSize: Size(ScreenUtil().screenWidth, 48.h),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
  textStyle: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  ),
);
final primaryElevatedButtonTheme = ElevatedButton.styleFrom(
  // elevation: 0,
  backgroundColor: AppColors.primaryColor,
  foregroundColor: Colors.white,
  fixedSize: Size(ScreenUtil().screenWidth, 48.h),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
  textStyle: TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  ),
);
