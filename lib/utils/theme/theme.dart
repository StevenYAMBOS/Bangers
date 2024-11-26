import 'package:bangers/utils/theme/custom_themes/appbar_theme.dart';
import 'package:bangers/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:bangers/utils/theme/custom_themes/elevated_buttom_theme.dart';
import 'package:bangers/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._(); // La syntaxe `._` signifie que la classe est privée. Les classes et les méthodes ne seront disponibles que dans le fichier .dart où elles sont définies. Ici ça nous évite de créer les instances.

  // Light mode
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
      appBarTheme: TAppBar.lightAppBarTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
      elevatedButtonTheme: TElevatedButtomTheme.lightElevatedButtonTheme);

  // Dark mode
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      appBarTheme: TAppBar.darkAppBarTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: TElevatedButtomTheme.darkElevatedButtonTheme);
}
