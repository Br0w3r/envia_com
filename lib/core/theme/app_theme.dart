import 'package:flutter/material.dart';
import 'package:envia_com/app/utils/colors.utils.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.light,
    scaffoldBackgroundColor: ColorsUtils.hexToColor("#EAE9E9"),
    applyElevationOverlayColor: true,
    primaryColorLight: ColorsUtils.hexToColor("#08567D"),
    dividerColor: ColorsUtils.hexToColor("#08567D"),
    focusColor: ColorsUtils.hexToColor("#08567D"),
    appBarTheme: AppBarTheme(
      color: Colors.red[900]!,
      surfaceTintColor: Colors.white,
      scrolledUnderElevation: 10,
      elevation: 10,
    ),
    indicatorColor: ColorsUtils.hexToColor("#30B8FC"),
    hoverColor: Colors.cyanAccent[100],
    cardTheme: CardTheme(
      color: ColorsUtils.hexToColor("#EAE9E9"),
      elevation: 2,
    ),
    iconTheme: const IconThemeData(
      color: Colors.black87,
      size: 25,
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: ColorsUtils.hexToColor("#E7AB68"), //color Blue in Drawer
    ),
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.white),
    dividerTheme: const DividerThemeData(color: Colors.transparent),
    scrollbarTheme: ScrollbarThemeData(
      thumbVisibility: MaterialStateProperty.all<bool>(true),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      sizeConstraints: BoxConstraints(
          maxHeight: 120, maxWidth: 120, minHeight: 50, minWidth: 50),
      backgroundColor: Colors.white38,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      hoverColor: Colors.yellowAccent,
      filled: true,
      alignLabelWithHint: true,
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
            color: Color.fromARGB(255, 156, 156, 156), width: 1),
        borderRadius: BorderRadius.circular(0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
            color: Color.fromARGB(255, 163, 163, 163), width: 1),
        borderRadius: BorderRadius.circular(0),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.redAccent, width: 1),
        borderRadius: BorderRadius.circular(0),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.redAccent, width: 1),
        borderRadius: BorderRadius.circular(0),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: const Color.fromARGB(255, 156, 156, 156).withOpacity(0.1),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(0),
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: ColorsUtils.hexToColor("#3D2C42").withAlpha(50),
      cursorColor: ColorsUtils.hexToColor("#3D2C42"),
      selectionHandleColor: ColorsUtils.hexToColor("#3D2C42"),
    ),
    primaryIconTheme: const IconThemeData(color: Colors.black, size: 25),
    fontFamily: GoogleFonts.montserrat().fontFamily,
    textTheme: GoogleFonts.montserratTextTheme().copyWith(
      titleLarge: GoogleFonts.montserrat(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: GoogleFonts.montserrat(
        fontSize: 25,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: GoogleFonts.montserrat(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: GoogleFonts.montserrat(
        fontSize: 18,
        color: Colors.black,
      ),
      bodyMedium: GoogleFonts.montserrat(
        fontSize: 14,
        color: Colors.black,
      ),
      bodySmall: GoogleFonts.montserrat(
        fontSize: 12,
        color: Colors.black,
      ),
      labelLarge: GoogleFonts.montserrat(
        fontSize: 16,
        color: Colors.black,
      ),
      labelMedium: GoogleFonts.montserrat(
        fontSize: 14,
        color: Colors.black,
      ),
      labelSmall: GoogleFonts.montserrat(
        fontSize: 10,
        color: Colors.black,
      ),
    ),
    colorScheme: ColorScheme(
      background: Colors.white,
      onBackground: Colors.black,
      onPrimary: Colors.grey[800]!,
      primary: Colors.black54,
      outline: Colors.black26,
      outlineVariant: Colors.black87,
      secondary: Colors.brown[300]!,
      brightness: Brightness.light,
      error: Colors.redAccent,
      onError: Colors.redAccent.shade100,
      onSecondary: ColorsUtils.hexToColor("#BC955C"),
      onSurface: ColorsUtils.hexToColor("#DDC9A3"),
      surface: ColorsUtils.hexToColor("#235B4E"),
    ));
