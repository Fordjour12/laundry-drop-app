import 'package:flutter/material.dart';

// const Color primaryColor = Color.fromRGBO(11, 1, 46, 1);
// const Color secondaryColor = Color.fromRGBO(248, 247, 253, 1);
// const Color accentColor = Color.fromRGBO(41, 1, 65, 1);
// const Ultramarine Shades1 = Color(0xFF0b012e);
// const Ultramarine Shades2 = Color(0xFF140259);
// const Ultramarine Shades3 = Color(0xFF1e0383);
// const Ultramarine Shades4 = Color(0xFF2804ae);
// const Ultramarine Shades5 = Color(0xFF3205d8);

// 60#4cacb9
// 30#F3FBFC
// 10#3B8797

// const Soul1 = Color(0xFF293045);
// const Soul2 = Color(0xFF424d6f);
// const Soul3 = Color(0xFF5c6b9a);
// const Soul4 = Color(0xFF7588c4);
// const Soul5 = Color(0xFF8ea6ef);

// Define your theme colors
const Color primaryColor = Colors.blue;
const Color secondaryColor = Colors.green;
const Color accentColor = Colors.purple;

// Define your typography
const TextStyle headingStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
);

final ThemeData darkTheme = ThemeData.dark().copyWith(
  colorScheme: const ColorScheme.dark().copyWith(
    primary: primaryColor,
    secondary: secondaryColor,
    tertiary: accentColor,
  ),
);

final ThemeData lightTheme = ThemeData.light().copyWith(
  colorScheme: const ColorScheme.light().copyWith(
    primary: primaryColor,
    secondary: secondaryColor,
    tertiary: accentColor,
  ),
);

// Create a ThemeData object with the defined properties
final ThemeData appTheme = ThemeData(
  primaryColor: primaryColor,
  textTheme: const TextTheme(
    displayLarge: headingStyle,
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: secondaryColor),
);



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _themeData;

  ThemeNotifier(this._themeData);

  getTheme() => _themeData;

  setTheme(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }
}

void main() {
  runApp(
    ChangeNotifierProvider<ThemeNotifier>(
      create: (_) => ThemeNotifier(MyAppThemeMode.lightTheme),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      title: 'Laundry Drop',
      theme: themeNotifier.getTheme(),
      home: Scaffold(
        appBar: AppBar(title: Text('Laundry Drop')),
        body: Center(
          child: RaisedButton(
            child: Text('Change Theme'),
            onPressed: () {
              themeNotifier.setTheme(
                themeNotifier.getTheme() == MyAppThemeMode.lightTheme
                    ? MyAppThemeMode.darkTheme
                    : MyAppThemeMode.lightTheme,
              );
            },
          ),
        ),
      ),
    );
  }
}
