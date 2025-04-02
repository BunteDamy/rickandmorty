import 'package:flutter/material.dart';

class AppTheme extends ChangeNotifier{

  ThemeMode themeMode = ThemeMode.light; //cihazın varsayilan teması.
  // AppTheme._(); //nesne oluşturmayı engeller

  ThemeData get theme => themeMode == ThemeMode.light ? lightTheme : darkTheme;

  void toggleTheme(){
    themeMode = themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }

  static ThemeData get lightTheme => ThemeData(
    scaffoldBackgroundColor: Colors.white,
    
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF42B4CA),
      secondary: Color(0xFFD5E9ED),
      surface: Colors.white,
      onSurface: Color(0xFF414A4C),
      error: Color(0xFF414A4C),
      tertiary: Color(0xFFB5C4C7),

    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: const Color(0xFF42B4CA),
      ),
    ),
  );


  static ThemeData get darkTheme => ThemeData(
    scaffoldBackgroundColor: Colors.black,
    
    colorScheme: const ColorScheme.dark(),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: const Color(0xFF42B4CA),
      ),
    ),
  );

}

