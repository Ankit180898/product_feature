import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color(0xFF181818);
const Color bgColor = Color.fromRGBO(15, 15, 15, 1.0);

const Color buttonColor = Color(0xff69E4EC);

const Color iconColor = Color.fromRGBO(124, 124, 124, 1);
const Color cardColor = Color(0xFF1B1B1B);
const Color textColor = Color(0xffffffff);
const Color logoColor = Color(0xff005E99);
const Color bgColorDevice = Color.fromRGBO(67, 138, 134, 1);
//55C4FB
const Color logoPrimaryColor = Color(0xff55C4FB);

//30
TextStyle salutationTextStyle(double size, Color color) => GoogleFonts.manrope(
      textStyle: TextStyle(
        color: color,
        height: 2,
        fontSize: size,
        fontWeight: FontWeight.w600,
      ),
    );
//72 when big
// 48 when mobile size
TextStyle titleText(double size, Color color) => GoogleFonts.manrope(
      textStyle: TextStyle(
        color: color,
        height: 1.2,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
//24
TextStyle normalText(double size, Color color) => GoogleFonts.manrope(
      textStyle: TextStyle(
          height: 1.5,
          color: color,
          fontSize: size,
          fontWeight: FontWeight.normal),
    );
