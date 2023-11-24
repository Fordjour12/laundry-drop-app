import 'package:flutter/material.dart';
import 'package:in.laundrydrop.app/core/constants/text_constants.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final void Function() onPressed;

  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: MyAppTypography.cbs(
        MediaQuery.of(context).size.width,
      ),
      child: Text(
        buttonText,
        style: MyAppTypography.bt18b,
      ),
    );
  }
}
