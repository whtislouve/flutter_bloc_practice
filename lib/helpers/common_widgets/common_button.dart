import 'package:flutter/material.dart';

class CommonFilledButton extends StatelessWidget {
  CommonFilledButton(
      {Key? key,
      required this.buttonTitle,
      required this.onPressed,
      this.textColor});

  String buttonTitle;
  void Function()? onPressed;
  MaterialStatePropertyAll<Color>? textColor;
  MaterialStatePropertyAll<Color> defaultColor =
      MaterialStatePropertyAll(Colors.red);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      child: Text(this.buttonTitle),
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(Colors.amber),
        foregroundColor: textColor == null ? defaultColor : textColor,
      ),
    );
  }
}
