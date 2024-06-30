import 'package:flowers_app/lib/core/utils/constants/app_styles.dart';
import 'package:flowers_app/lib/features/Pages/DiseaseOfPOTAtO.dart';
import 'package:flowers_app/lib/features/Pages/DiseaseOfTomato.dart';
import 'package:flowers_app/lib/features/Widgets/constants.dart';
import 'package:flutter/material.dart';

class CareAboutPage extends StatelessWidget {
  CareAboutPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "امراض النباتات و علاجها",
            style: TextStyle(
                color: kWhiteColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: AppTextStyles.appFont),
          ),
          centerTitle: true,
          backgroundColor: kColorBackground,
        ),
        backgroundColor: kWhiteColor,
        body: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DiseaseOfTomato()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Container(
                margin: EdgeInsets.all(4),
                height: 180,
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/tomatoBackGround.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 50, bottom: 50, left: 60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      bottomLeft: Radius.circular(100),
                    ),
                    color: Colors.white.withOpacity(0.7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Text(
                          "المرض في الطماطم",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: AppTextStyles.appFont,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DiseaseOfTomato()),
                            );
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            size: 30,
                            weight: 30,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DiseaseOfPOTATO()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 4, // Adjust the elevation value as desired
                // Add any other desired button styles such as background color, etc.
              ),
              child: Container(
                margin: EdgeInsets.all(4),
                height: 180,
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/PotatoBackground.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 50, bottom: 50, left: 60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      bottomLeft: Radius.circular(100),
                    ),
                    color: Colors.white.withOpacity(0.7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Text(
                          "المرض في البطاطس",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: AppTextStyles.appFont,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DiseaseOfPOTATO()),
                            );
                          },
                          icon: Icon(Icons.keyboard_arrow_down,
                              size: 30, weight: 30, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ));
  }
}
