import 'package:flutter/material.dart';
import 'package:in.laundrydrop.app/core/constants/text_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Text(
          "HomePage",
          style: MyAppTypography.body1,
        ),
      ),
    );
  }
}
