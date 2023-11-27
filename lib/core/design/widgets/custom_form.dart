import 'package:flutter/material.dart';
import 'package:in.laundrydrop.app/core/design/widgets/custom_button.dart';
import 'package:in.laundrydrop.app/core/design/widgets/custom_input.dart';

class CustomForm extends StatelessWidget {
  final String buttonText;
  final Function() onPressed;

  const CustomForm({
    super.key,
    this.numberOfFields = 2,
    required this.buttonText,
    required this.onPressed,
  });

  final int numberOfFields;
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static final TextEditingController _emailController = TextEditingController();
  static final TextEditingController _passwordController =
      TextEditingController();
  static final TextEditingController _usernameController =
      TextEditingController();

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
              _formKey.currentState!.validate();
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
              _formKey.currentState!.validate();
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
                _formKey.currentState!.validate();
              },
            ),
          const SizedBox(height: 20),
          CustomButton(
            buttonText: buttonText,
            onPressed: onPressed,
          )
        ],
      ),
    );
  }
}
