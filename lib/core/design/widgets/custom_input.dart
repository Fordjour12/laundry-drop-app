import 'package:flutter/material.dart';
import 'package:in.laundrydrop.app/core/constants/color_constants.dart';
import 'package:in.laundrydrop.app/core/utils/auth_validation.dart';

class CustomInput extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Function(String)? onChanged;

// Handling the onSaved event of the TextFormField to save the field value when the form is submitted.
// Displaying a message to the user when the form is submitted and validation fails
  const CustomInput({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.obscureText,
    required this.keyboardType,
    required this.controller,
    required this.onChanged,
  });

  static const OutlineInputBorder border = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(
      color: MyAppColorSwatch.secondaryColorDark,
      width: 1,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText!,
      keyboardType: keyboardType,
      onChanged: onChanged,
      enableSuggestions: true,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      validator: (string) {
        switch (labelText) {
          case "Email":
            return AuthValidation.validateEmail(string);
          case "Password":
            return AuthValidation.validatePassword(string);
          case "Username":
            return AuthValidation.validateUsername(string);
          default:
            null;
        }
        return null;
      },
      decoration: InputDecoration(
        border: border,
        labelText: labelText,
        labelStyle: const TextStyle(
          color: MyAppColorSwatch.secondaryColorDark,
        ),
        hintText: hintText,
        enabledBorder: border,
        focusedBorder: border,
      ),
    );
  }
}
