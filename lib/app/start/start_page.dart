import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:in.laundrydrop.app/core/constants/color_constants.dart';
import 'package:in.laundrydrop.app/core/constants/text_constants.dart';
import 'package:in.laundrydrop.app/core/design/widgets/custom_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: MyAppColorSwatch.tertiaryColor,
            child: const Text(
              "Main container for image",
              style: MyAppTypography.hd24b,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.55,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 16),
                  Container(
                    height: 5,
                    width: MediaQuery.of(context).size.width * 0.65,
                    decoration: const ShapeDecoration(
                      color: MyAppColorSwatch.secondaryColorDark,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Let's Get Started",
                        style: MyAppTypography.hd32b,
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Have an account to get your details to sign you in or create an to enjoy the experience ",
                        style: MyAppTypography.bd18m,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Column(
                    children: [
                      CustomButton(
                        buttonText: "Create Account",
                        onPressed: () => context.go("/create-account"),
                      ),
                      const SizedBox(height: 30),
                      CustomButton(
                        buttonText: "Sign In Account",
                        onPressed: () => context.go("/signIn"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        "Forgot Password?",
                        style: MyAppTypography.bd10_(
                          FontWeight.w400,
                          MyAppColorSwatch.secondaryColorDark,
                        ),
                      ),
                      TextButton(
                        onPressed: () => context.go("/reset-password"),
                        child: Text(
                          "Reset Password",
                          style: MyAppTypography.bd10_(
                            FontWeight.w700,
                            MyAppColorSwatch.tertiaryColorDarkShade1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
