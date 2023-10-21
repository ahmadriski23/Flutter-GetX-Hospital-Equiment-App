import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';

abstract class AppText {
  static TextStyle blackText = GoogleFonts.poppins(color: AppColors.blackColor);
  static TextStyle grayText = GoogleFonts.poppins(color: AppColors.grayColor);
  static TextStyle orangeText =
      GoogleFonts.poppins(color: AppColors.orangeColor);
  static TextStyle secondaryText =
      GoogleFonts.poppins(color: AppColors.secondaryColor);
  static TextStyle primaryText =
      GoogleFonts.poppins(color: AppColors.primaryColor);
}
