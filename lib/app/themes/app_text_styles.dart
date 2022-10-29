import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:evolutionsoft_test_flutter/app/themes/app_colors.dart';

class TextStyles {
  static final titleCard = GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.title,
  );

  static final description = GoogleFonts.openSans(
    fontSize: 9,
    fontWeight: FontWeight.w400,
    color: AppColors.description,
  );

  static final price = GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
  );

  static final titleTextField = GoogleFonts.nunitoSans(
      fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.description);

  static final informationTextField = GoogleFonts.nunitoSans(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.grey,
  );

  static final textOfButton = GoogleFonts.nunitoSans(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );
}
