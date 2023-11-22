// ignore: file_names
import 'package:go_router/go_router.dart';
import 'package:in.laundrydrop.app/app/home/home_page.dart';
import 'package:in.laundrydrop.app/app/tabnavigationbar/tab_bottom_navigator_page.dart';

class MyAppRouter {
  GoRouter router = GoRouter(
    routes: [
      ShellRoute(
        routes: [
          GoRoute(
            path: "/",
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: "/settings",
            builder: (context, state) => const HomePage(),
          ),
        ],
        builder: (context, state, child) => TabBottomNavigatorPage(
          state: state,
          child: child,
        ),
      ),
    ],
  );
}
