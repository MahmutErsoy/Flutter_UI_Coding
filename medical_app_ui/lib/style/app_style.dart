import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  // App Images
  static String profile = "assets/images/profile.jpg";
  static String image1 = "assets/images/image1.png";

  // App Icons
  static String filtterIcon = "assets/icons/adjust-horizontal-alt.svg";
  static String searchIcon = "assets/icons/search.svg";

  // Bottom Bar Icons
  static String homeIcon = "assets/icons/home.svg";
  static String eventIcon = "assets/icons/event_note.svg";
  static String reportIcon = "assets/icons/report.svg";
  static String notificationsIcon = "assets/icons/notifications.svg";

  // App Colors
  static const primarySwatch = Color(0xff1C6BA4);
  static const inputFillColor = Color(0xffEEF6FC);

  // App Theme Data
  static ThemeData? theme = ThemeData(
      textTheme: GoogleFonts.nunitoSansTextTheme().apply(
    bodyColor: const Color(0xff0E1012),
    displayColor: const Color(0xff0E1012),
  ));
}
