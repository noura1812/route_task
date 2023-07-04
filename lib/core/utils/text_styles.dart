import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_task/core/utils/app_colors.dart';

TextStyle poppins14W400() => GoogleFonts.poppins(
    fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppColors.textColor);
TextStyle poppins20W600() => GoogleFonts.poppins(
    fontSize: 20.sp, fontWeight: FontWeight.w600, color: AppColors.textColor);
TextStyle poppins20W400() => GoogleFonts.poppins(
    fontSize: 20.sp, fontWeight: FontWeight.w400, color: AppColors.textColor);
TextStyle poppins12W400() => GoogleFonts.poppins(
    fontSize: 12.sp, fontWeight: FontWeight.w400, color: AppColors.textColor);
TextStyle poppins11W400() => GoogleFonts.poppins(
    decoration: TextDecoration.lineThrough,
    decorationColor: AppColors.primaryColor.withOpacity(.6),
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryColor.withOpacity(.6));
TextStyle poppins14W300() => GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textColor.withOpacity(.6));
