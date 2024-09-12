import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const COLOR_BLACK = Colors.black;
const COLOR_ORANGE = Colors.deepOrange;
const COLOR_GREY = Color(0xff9E9E9E);
//const COLOR_WHITE = Color(0xffFFA801);
const COLOR_GREEN = Color(0xff7BB655);
const COLOR_YELLOW = Color(0xffDF9545);
const COLOR_GREENYELLOW = Color(0xffc2b280);
const COLOR_AMBERYELLOW = Color(0xffFF5733);
const COLOR_BROWNRED = Color(0xff712E13);
const COLOR_BLUGREY = Color(0xff84a59d);
//const COLOR_PINK = Color(0xffddc3d0);
//const COLOR_PINK = Color(0xff974500);
//const COLOR_PINK = Color(0xffa8ba9a);
// const COLOR_PINK = Color(0xffdce2c8);
const COLOR_DESERTSAND = Color(0xffd9c5b2);
// const COLOR_SPACEBLACK = Color(0xffb76d68);
const COLOR_SEALBROWN = Color(0xff582707);
const COLOR_BLACKPURPLE = Color(0xff2a1f2d);

TextTheme defaultText = TextTheme(
    displayLarge: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 96),
    displayMedium:
        GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 60),
    displaySmall: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 48),
    headlineMedium: GoogleFonts.nunito(
        fontWeight: FontWeight.bold, fontSize: 34, color: COLOR_BROWNRED),
    headlineSmall:
        GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 24),
    titleLarge: GoogleFonts.nunito(
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    bodyLarge: GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.normal),
    bodyMedium: GoogleFonts.nunito(
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    titleMedium:
        GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.normal),
    titleSmall: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w400),
    labelLarge: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w400),
    bodySmall: GoogleFonts.nunito(fontSize: 12, fontWeight: FontWeight.normal));
