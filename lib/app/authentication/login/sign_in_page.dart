import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:in.laundrydrop.app/core/constants/color_constants.dart';
import 'package:in.laundrydrop.app/core/constants/text_constants.dart';
import 'package:in.laundrydrop.app/core/design/widgets/bottom_layout_container.dart';
import 'package:in.laundrydrop.app/core/design/widgets/custom_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/image/create_account.jpg",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          BottomLayoutContainer(
            height: 0.58,
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
                        "Sign In",
                        style: MyAppTypography.hd24b,
                      ),
                    ),
                    Text(
                      "Do have an account enter your details to enter your account",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 21 / 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                CustomForm(
                  buttonText: "Sign In",
                  // onPressed: () {
                  // print("Create Account button pressed");
                  // },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Don’t have an account?",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 21 / 14,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print("create account button pressed");
                        context.go("/create-account");
                      },
                      child: const Text(
                        "Create Account",
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
