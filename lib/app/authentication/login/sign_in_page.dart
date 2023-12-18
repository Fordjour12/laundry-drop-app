import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:in.laundrydrop.app/app/authentication/login/sign_in_controller.dart';
import 'package:in.laundrydrop.app/core/constants/color_constants.dart';
import 'package:in.laundrydrop.app/core/design/widgets/bottom_layout_container.dart';
import 'package:in.laundrydrop.app/core/design/widgets/custom_form.dart';
import 'package:in.laundrydrop.app/main.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SignInPageStateChange(
        onAuthStateChanged: () => context.go('/home'),
        supabaseClient: supabase,
      ),
      child: Consumer<SignInPageStateChange>(
        builder: (context, value, child) {
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 16,
                          bottom: 16,
                        ),
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            height: 36 / 24,
                          ),
                        ),
                      ),
                      const Text(
                        "Do have an account enter your details to enter your account",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 21 / 14,
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      CustomForm(buttonText: "Sign In"),
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
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
