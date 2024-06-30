import 'package:flowers_app/lib/core/utils/constants/app_styles.dart';
import 'package:flowers_app/lib/features/Widgets/ColumnOfcontantUs.dart';
import 'package:flowers_app/lib/features/Widgets/constants.dart';
import 'package:flutter/material.dart';

class Conectus extends StatelessWidget {
  const Conectus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "المهندسين الزراعيين",
          style: TextStyle(
              fontFamily: AppTextStyles.appFont,
              color: kWhiteColor,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: kColorBackground,
      ),
      backgroundColor: kWhiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              height: 700,
              decoration: BoxDecoration(
                color: kWhiteColor,
              ),
              child: ListView(
                padding: EdgeInsets.all(6),
                children: [ColumnOfContacts()],
              )),
        ],
      ),
    );
  }
}
