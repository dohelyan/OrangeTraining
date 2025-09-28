import 'package:flutter/material.dart';
final Kcolor= const Color(0xFF6C63FF);
final Kaccent= const Color(0xFF3A86FF);

ThemeData buildTheme ()
{
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Kcolor),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        
      ),
      contentPadding: EdgeInsets.all(14),
    ),
     elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),),
  );
}