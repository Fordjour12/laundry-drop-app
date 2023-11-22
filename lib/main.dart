import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:in.laundrydrop.app/app/tabnavigationbar/tab_bottom_navigator_controller.dart';
import 'package:in.laundrydrop.app/core/routes/goRouter.dart';
import 'package:in.laundrydrop.app/core/theme/themes.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // this line is temporary for testing purpose
  await Future.delayed(const Duration(seconds: 10));
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TabBottomNavigatorController())
      ],
      child: MaterialApp.router(
        routerConfig: MyAppRouter().router,
        debugShowCheckedModeBanner: false,
        theme: MyAppThemeMode.lightTheme,
        darkTheme: MyAppThemeMode.darkTheme,
        // themeMode: MyAppThemeMode.getThemeMode("system"),
      ),
    );
  }
}
