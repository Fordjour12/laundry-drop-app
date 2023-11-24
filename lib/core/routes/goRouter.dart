// ignore: file_names
import 'package:go_router/go_router.dart';
import 'package:in.laundrydrop.app/app/settings/settings_page.dart';
import 'package:in.laundrydrop.app/app/start/start_page.dart';
import 'package:in.laundrydrop.app/app/welcome/welcome_page.dart';

class MyAppRouter {
  final GoRouter router = GoRouter(
    // routes: [
    // ShellRoute(
    routes: <RouteBase>[
      GoRoute(
        path: "/",
        name: "welcome",
        builder: (context, state) => WelcomePage(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: "/starter",
        name: "starter",
        builder: (context, state) => StartPage(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: "/settings",
        name: "settings",
        builder: (context, state) => SettingsPage(
          key: state.pageKey,
        ),
      ),
    ],
    // builder: (context, state, child) => TabBottomNavigatorPage(
    //   state: state.pageKey,
    //   child: child,
    // ),
    // ),
    // ],
  );
}
