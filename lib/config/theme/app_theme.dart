import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: Colors.purple,  
      //TEXT
      textTheme: TextTheme(
        titleLarge: TextStyle( fontFamily: 'RobotoMono'),
        titleMedium: TextStyle(fontFamily: 'RobotoMono', fontSize: 35),
        displaySmall: TextStyle(fontFamily: 'RobotoMono', fontSize: 24, fontWeight: FontWeight.bold, decoration: TextDecoration.underline, decorationThickness: 1.5),
        bodyLarge: TextStyle(fontFamily: 'RobotoMono', fontSize: 20, color: Colors.black87),
        bodyMedium: TextStyle(fontFamily: 'RobotoMono', fontSize: 15, color: Colors.black87),
        bodySmall: TextStyle(fontFamily: 'RobotoMono', fontSize: 14, color: Colors.black87),
    ),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty .resolveWith<Color?>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.pressed)) {
                return Colors.green.shade700;
              }
              return Colors.green; 
            },
          ),
          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
          textStyle: WidgetStateProperty.all<TextStyle>(
            TextStyle(fontFamily: 'RobotoMono',fontSize: 18), 
          ),
          
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          ),
        
          overlayColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.pressed)) {
                return Colors.white.withValues(alpha:0.3); 
              }
              return null; 
            },
          ),
        ),
    ),
  );
}