import 'dart:async';

import 'package:flowers_app/lib/features/Pages/BasicPage.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  StartPage({super.key});
  static const String routeName = "StartIntroPage";

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => BasicHomePage(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background222222.png"))),
      ),
    );
  }
}
