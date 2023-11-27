import 'package:flutter/material.dart';
import 'package:in.laundrydrop.app/core/constants/color_constants.dart';

class BottomLayoutContainer extends StatelessWidget {
  final Widget child;

  // this value is used to set the height of the container  if not provided then it will take 100% of the screen height
  // value should be in double (0.0 - 1.0   1.0 = 100%)
  final double? height;

  const BottomLayoutContainer({super.key, required this.child, this.height});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * (height ?? 0.55),
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
        child: child,
      ),
    );
  }
}
