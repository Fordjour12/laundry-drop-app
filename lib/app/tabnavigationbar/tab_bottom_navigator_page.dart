import 'package:flutter/material.dart';
import 'package:go_router/src/state.dart';
import 'package:in.laundrydrop.app/app/tabnavigationbar/tab_bottom_navigator_controller.dart';
import 'package:provider/provider.dart';

class TabBottomNavigatorPage extends StatelessWidget {
  const TabBottomNavigatorPage(
      {Key? key, required GoRouterState state, required Widget child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TabBottomNavigatorController tabProvider =
        Provider.of<TabBottomNavigatorController>(context);

    const List<BottomNavigationBarItem> bottomNavigationBarItems =
        <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: "Settings",
      ),
    ];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavigationBarItems,
        currentIndex: tabProvider.currentIndex,
        onTap: (int index) {
          tabProvider.currentIndex = index;
        },
      ),
    );
  }
}
