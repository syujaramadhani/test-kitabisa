import 'package:test_kitabisa/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class Navigation {
  // static toFormActivity(context) {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //       builder: (context) => const FormActivity(),
  //     ),
  //   );
  // }

  static toDetailHomeScreen(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }
}
