// ignore: file_names
import 'package:go_router/go_router.dart';
import 'package:in.laundrydrop.app/app/home/home_page.dart';
import 'package:in.laundrydrop.app/app/settings/settings_page.dart';
import 'package:in.laundrydrop.app/app/tabnavigationbar/tab_bottom_navigator_page.dart';

class MyAppRouter {
  final GoRouter router = GoRouter(
    routes: [
      ShellRoute(
        routes: <RouteBase>[
          GoRoute(
            path: "/",
            name: "home",
            builder: (context, state) => HomePage(
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
        builder: (context, state, child) => TabBottomNavigatorPage(
          state: state.pageKey,
          child: child,
        ),
      ),
    ],
  );
}
