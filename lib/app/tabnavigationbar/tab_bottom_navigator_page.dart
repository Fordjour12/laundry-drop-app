import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:in.laundrydrop.app/app/tabnavigationbar/tab_bottom_navigator_controller.dart';
import 'package:provider/provider.dart';

class TabBottomNavigatorPage extends StatelessWidget {
  const TabBottomNavigatorPage(
      {super.key, required ValueKey<String> state, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final TabBottomNavigatorController tabBottomNavigatorController =
        Provider.of<TabBottomNavigatorController>(context);
    final GoRouter router = GoRouter.of(context);
    final List<String> routes = ['/', "/settings"];

    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabBottomNavigatorController.currentIndex,
        onTap: (int index) {
          tabBottomNavigatorController.currentIndex = index;
          router.go(routes[index]);
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
