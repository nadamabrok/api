import 'package:flowers_app/lib/core/utils/constants/app_styles.dart';
import 'package:flowers_app/lib/features/Widgets/constants.dart';
import 'package:flutter/material.dart';

class CustomPadding extends StatelessWidget {
  CustomPadding({
    super.key,
    required this.image,
    required this.text,
    required this.children,
    required this.subtitletext,
  });
  final String? image;
  final String text;
  final String? subtitletext;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kWhiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ExpansionTile(
        subtitle: Text(
          subtitletext!,
          style: TextStyle(
              color: kColorBackground, fontFamily: AppTextStyles.appFont),
        ),
        tilePadding: EdgeInsets.all(20),
        leading: Image(image: AssetImage(image!)),
        title: Text(
          text,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontFamily: AppTextStyles.appFont),
        ),
        collapsedIconColor: Colors.black,
        iconColor: Colors.black,
        visualDensity: VisualDensity.compact,
        collapsedShape:
            BeveledRectangleBorder(borderRadius: BorderRadius.circular(15)),
        childrenPadding: EdgeInsets.all(20),
        children: children,
      ),
    );
  }
}
