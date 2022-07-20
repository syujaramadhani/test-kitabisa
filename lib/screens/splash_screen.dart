import 'dart:async';
import 'package:flutter/material.dart';
import 'package:test_kitabisa/screens/menu_tabs.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // ignore: must_call_super
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const MenuTabs()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text(
        "Welcome to Kitabisa",
        style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
      ),
    ));
  }
}
