import 'dart:convert';
import "dart:developer" as devtools show log;

import 'package:flutter/material.dart';
import 'package:in.laundrydrop.app/app/authentication/create-account/create_account.dart';
import 'package:in.laundrydrop.app/app/authentication/create-account/create_account_repository.dart';
import 'package:in.laundrydrop.app/app/authentication/create-account/create_account_service.dart';
import 'package:in.laundrydrop.app/app/authentication/login/sign_in.dart';
import 'package:in.laundrydrop.app/app/authentication/login/sign_in_respository.dart';
import 'package:in.laundrydrop.app/app/authentication/login/sign_in_service.dart';
import 'package:in.laundrydrop.app/core/design/widgets/custom_button.dart';
import 'package:in.laundrydrop.app/core/design/widgets/custom_input.dart';
import 'package:in.laundrydrop.app/core/utils/auth_validation.dart';
import 'package:in.laundrydrop.app/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CustomForm extends StatelessWidget {
  final String buttonText;

  CustomForm({
    super.key,
    this.numberOfFields = 2,
    required this.buttonText,
  });

  final int numberOfFields;
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static final TextEditingController _emailController = TextEditingController();
  static final TextEditingController _passwordController =
      TextEditingController();
  static final TextEditingController _usernameController =
      TextEditingController();

  final CreateAccountService authService =
      CreateAccountService(CreateAccountRepository(supabase));

  final SignInServices signInService =
      SignInServices(SignInRepository(supabase));

  void authSignIn(context) async {
    try {
      User? user = await signInService.signIn(SignInModel(
        email: _emailController.text,
        password: _passwordController.text,
      ));
      if (user != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "${jsonEncode(user.email?.toLowerCase())} logged in",
            ),
            backgroundColor: Colors.green,
          ),
        );
      }
    } on AuthException catch (error) {
      devtools.log(error.message, name: "SignInRepository");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(jsonEncode(error.message.toString())),
          backgroundColor: Colors.red.shade900,
        ),
      );
    } catch (error) {
      devtools.log(error.toString(), name: "SignInRepository");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(jsonEncode(error.toString())),
          backgroundColor: Colors.red.shade900,
        ),
      );
    }
  }

  void authCreateAccount(context) async {
    try {
      User? user = await authService.createNewAccount(CreateAccountModel(
        email: _emailController.text,
        password: _passwordController.text,
        username: _usernameController.text,
      ));

      if (user != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "${jsonEncode(user.email?.toLowerCase())} verify your email to get logged in",
            ),
            backgroundColor: Colors.green,
          ),
        );
      }
      devtools.log(user.toString());
    } on AuthException catch (error) {
      devtools.log(error.message, name: "CreateAccountRepository");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(jsonEncode(error.message.toString())),
          backgroundColor: Colors.red.shade900,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomInput(
            labelText: 'Email',
            hintText: 'Enter your email',
            obscureText: false,
            keyboardType: TextInputType.emailAddress,
            controller: _emailController,
            onChanged: (value) {
              AuthValidation.validateEmail(value);
            },
          ),
          const SizedBox(height: 16),
          CustomInput(
            labelText: 'Password',
            hintText: 'Enter your password',
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            controller: _passwordController,
            onChanged: (value) {
              AuthValidation.validatePassword(value);
            },
          ),
          const SizedBox(height: 16),
          if (numberOfFields == 3)
            CustomInput(
              labelText: 'Username',
              hintText: 'Enter your username',
              obscureText: false,
              keyboardType: TextInputType.text,
              controller: _usernameController,
              onChanged: (value) {
                AuthValidation.validateUsername(value);
              },
            ),
          const SizedBox(height: 20),
          CustomButton(
            buttonText: buttonText,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                if (buttonText == "Create Account") {
                  authCreateAccount(context);
                } else if (buttonText == "Sign In") {
                  authSignIn(context);
                }
              }
            },
          )
        ],
      ),
    );
  }
}
