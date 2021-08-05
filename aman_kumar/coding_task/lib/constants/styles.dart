import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class BrandStyles {
  static final paragraphStyleBold = GoogleFonts.nunito(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static final headingStyle = GoogleFonts.nunito(
    fontSize: 28,
    fontWeight: FontWeight.w500,
  );
  static final paragraphStyle = GoogleFonts.nunito(
    fontSize: 18,
  );
  static final paragraphSmallStyle = GoogleFonts.nunito(
    fontSize: 12,
    color: BrandColors.black,
  );
  static final paragraphSmallStyleBold = GoogleFonts.nunito(
    fontSize: 12,
    color: BrandColors.black,
    fontWeight: FontWeight.w500,
  );
}
