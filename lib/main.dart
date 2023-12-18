import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:in.laundrydrop.app/app/tabnavigationbar/tab_bottom_navigator_controller.dart';
import 'package:in.laundrydrop.app/core/routes/goRouter.dart';
import 'package:in.laundrydrop.app/core/theme/themes.dart';
import 'package:in.laundrydrop.app/core/utils/video_player_provider.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Supabase.initialize(
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im15bHl5cm9ocnRtaXVqa3hvbXN3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTg1MzMyMjgsImV4cCI6MjAxNDEwOTIyOH0.VCG5tWxkUtv6w9jaayfUsnOfAgkFkHr3-bPJMYDXUlg",
    url: "https://mylyyrohrtmiujkxomsw.supabase.co",
    //authFlowType: AuthFlowType.pkce,
  );
  // this line is temporary for testing purpose
  await Future.delayed(const Duration(seconds: 3));
  supabase.auth.onAuthStateChange.listen((event) {
    if (event.session != null) {
      MyAppRouter().router.go('/home');
    } else {
      MyAppRouter().router.go('/starter');
    }
  });
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TabBottomNavigatorController()),
        ChangeNotifierProvider(create: (_) => VideoPlayerProvider()),
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
