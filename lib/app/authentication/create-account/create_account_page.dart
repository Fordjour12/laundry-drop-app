import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:in.laundrydrop.app/core/constants/color_constants.dart';
import 'package:in.laundrydrop.app/core/constants/text_constants.dart';
import 'package:in.laundrydrop.app/core/design/widgets/bottom_layout_container.dart';
import 'package:in.laundrydrop.app/core/design/widgets/custom_form.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

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
          BottomLayoutContainer(
            height: 0.62,
            child: Column(
              children: <Widget>[
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        top: 16,
                        bottom: 16,
                      ),
                      child: Text(
                        "Create New Account",
                        style: MyAppTypography.hd24b,
                      ),
                    ),
                    Text(
                      "Don’t have an account enter your details to create a new account",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 21 / 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                CustomForm(
                  numberOfFields: 3,
                  buttonText: "Create Account",
                  onPressed: () {
                    print("Create Account button pressed");
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 21 / 14,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print("Sign In button pressed");
                        context.go("/sign-in");
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          height: 21 / 14,
                          color: MyAppColorSwatch.tertiaryColorDarkShade1,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
