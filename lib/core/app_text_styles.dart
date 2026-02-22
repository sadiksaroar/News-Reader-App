import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Centralised text styles using Google Fonts – Work Sans.
class AppTextStyles {
  AppTextStyles._();

  // ── Base text theme (applied globally via ThemeData) ─────────────────

  /// Returns a complete [TextTheme] based on Work Sans.
  /// Pass a [brightness] to get the correct default colour.
  static TextTheme textTheme({Brightness brightness = Brightness.light}) {
    final baseTheme =
        brightness == Brightness.dark ? ThemeData.dark() : ThemeData.light();
    return GoogleFonts.workSansTextTheme(baseTheme.textTheme);
  }

  // ── Reusable one-off styles ──────────────────────────────────────────

  static TextStyle get headlineBold => GoogleFonts.workSans(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get titleSemiBold => GoogleFonts.workSans(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get bodyRegular => GoogleFonts.workSans(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get bodySmall => GoogleFonts.workSans(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get labelSmall => GoogleFonts.workSans(
        fontSize: 11,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get button => GoogleFonts.workSans(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      );
}
