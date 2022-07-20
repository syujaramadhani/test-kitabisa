import 'package:test_kitabisa/features/colors.dart';
import 'package:flutter/material.dart';

Widget buttonRaised(text, {textColor = Colors.white, bgColor, onPressed}) {
  return ElevatedButton(
    child: Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
    ),
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 10.0,
      ),
      primary: bgColor,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
    onPressed: onPressed,
  );
}

Widget buttonGreen(text, {onPressed}) {
  return buttonRaised(
    text,
    bgColor: KitaBisaColor.greenButton,
    onPressed: onPressed,
  );
}

Widget buttonBlueOld(text, {onPressed}) {
  return buttonRaised(
    text,
    bgColor: KitaBisaColor.blueKitabisa,
    onPressed: onPressed,
  );
}
