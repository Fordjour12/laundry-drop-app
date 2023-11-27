import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:in.laundrydrop.app/core/constants/color_constants.dart';
import 'package:in.laundrydrop.app/core/constants/text_constants.dart';
import 'package:in.laundrydrop.app/core/design/widgets/custom_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: MyAppColorSwatch.tertiaryColor,
            child: const Text(
              "Main container for image",
              style: TextStyle(
                backgroundColor: MyAppColorSwatch.secondaryColor,
                fontSize: 24,
                height: 1.5,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .40,
              decoration: const ShapeDecoration(
                color: MyAppColorSwatch.primaryColorDark,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 20),
                  const Text(
                    "Welcome to Laundry Drop",
                    style: MyAppTypography.hd32b,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "The best application to find the nearest laundry form your location",
                    style: MyAppTypography.bd18m,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 75),
                  CustomButton(
                    buttonText: "Get Started",
                    onPressed: () => context.go("/starter"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
