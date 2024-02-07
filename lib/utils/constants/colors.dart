import 'package:flutter/material.dart';

class TColors {
  TColors._();

  // App Basic Colors
  static const Color primary = Color(0xff682ff8);
  static const Color secondary = Color(0xff87ff4b);
  static const Color accent = Color(0xff8dbae7);

  // Text Colors
  static const Color textPrimary = Color(0xff414141);
  static const Color textSecondary = Color(0xff7e7e7e);
  static const Color textWhite = Colors.white;

  // Background Colors
  static const Color light = Color(0xffe1e1e1);
  static const Color dark = Color(0xff363636);

  // Background Container Colors
  static const Color lightContainer = Color(0xffdcdcdc);
  static const Color darkContainer = Color(0xff212121);

  // Button Colors
  static const Color buttonPrimary = Color(0xff763b98);
  static const Color buttonSecondary = Color(0xff969696);
  static const Color buttonDisabled = Color(0xffd5d4d4);

  // AppBar Colors
  static const appBarBackground = Color(0xFF3498db);
  static const appBarText = Color(0xFFFFFFFF);

  // TabBar Colors
  static const tabBarBackground = Color(0xFF3498db);
  static const tabBarActiveText = Color(0xFFFFFFFF);
  static const tabBarInactiveText = Color(0xFFCCCCCC);

  // Border Colors
  static const Color borderPrimary = Color(0xffcecdcd);
  static const Color borderSecondary = Color(0xffe5e5e5);

  // Input Field Colors
  static const inputFieldBorder = Color(0xFFBDC3C7);
  static const inputFieldFill = Color(0xFFF2F2F2);

  // Error Colors
  static const error = Color(0xFFE74C3C);
  static const errorBackground = Color(0xFFF8D7DA);

  // Success Colors
  static const success = Color(0xFF2ecc71);
  static const successBackground = Color(0xFFD4EDDA);

  // Warning Colors
  static const warning = Color(0xFFE67E22);
  static const warningBackground = Color(0xFFFFF3CD);

  // Info Colors
  static const info = Color(0xFF3498db);
  static const infoBackground = Color(0xFFD4EDDA);

  // Loading Indicator Color
  static Color loadingIndicator = const Color(0xFF3498db).withOpacity(0.7);

  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF3498db), Color(0xFF2ecc71)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}