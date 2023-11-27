// ignore: file_names
import 'package:go_router/go_router.dart';
import 'package:in.laundrydrop.app/app/authentication/create-account/create_account_page.dart';
import 'package:in.laundrydrop.app/app/authentication/login/sign_in_page.dart';
import 'package:in.laundrydrop.app/app/authentication/reset-password/reset_password_page.dart';
import 'package:in.laundrydrop.app/app/settings/settings_page.dart';
import 'package:in.laundrydrop.app/app/start/start_page.dart';
import 'package:in.laundrydrop.app/app/welcome/welcome_page.dart';

class MyAppRouter {
  final GoRouter router = GoRouter(
    // routes: [
    // ShellRoute(
    initialLocation: "/create-account",
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
        path: "/create-account",
        name: "create-account",
        builder: (context, state) => CreateAccountPage(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: '/signIn',
        name: "signIn",
        builder: (context, state) => SignInPage(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: '/reset-password',
        name: "reset-password",
        builder: (context, state) => ResetPasswordPage(
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
