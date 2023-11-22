import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:in.laundrydrop.app/app/tabnavigationbar/tab_bottom_navigator_controller.dart';
import 'package:in.laundrydrop.app/app/tabnavigationbar/tab_bottom_navigator_page.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

class MockGoRouter extends Mock implements GoRouter {}

void main() {
  testWidgets('TabBottomNavigatorPage', (WidgetTester tester) async {
    // Create a mock TabBottomNavigatorController
    final tabBottomNavigatorController = TabBottomNavigatorController();

    // Create a mock GoRouter
    final mockRouter = MockGoRouter();

    // Build the TabBottomNavigatorPage with the mock controller and router
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<TabBottomNavigatorController>.value(
            value: tabBottomNavigatorController,
          ),
          Provider<GoRouter>.value(value: mockRouter),
        ],
        child: MaterialApp(
          home: TabBottomNavigatorPage(
            state: const ValueKey<String>('test'),
            child: Container(),
          ),
        ),
      ),
    );

    // Verify that the TabBottomNavigatorPage renders correctly
    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.byType(BottomNavigationBar), findsOneWidget);
    expect(find.byType(Icon), findsNWidgets(2));
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);

    // Simulate tapping on the second item in the BottomNavigationBar
    await tester.tap(find.byIcon(Icons.settings));
    await tester.pump();

    // Verify that the currentIndex is updated
    expect(tabBottomNavigatorController.currentIndex, 1);

    // Verify that the router is called
    verify(mockRouter.go('/settings')).called(1);
  });
}
