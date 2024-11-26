import 'package:bangers/utils/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BangersApp());
}

class BangersApp extends StatelessWidget {
  const BangersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system, // Thème par défaut
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      );
  }
}
