import 'package:flowers_app/lib/core/utils/constants/app_styles.dart';
import 'package:flowers_app/lib/features/Pages/CareAboutPage.dart';
import 'package:flowers_app/lib/features/Pages/ContactUs.dart';
import 'package:flowers_app/lib/features/Pages/MainHomeIntroPage.dart';
import 'package:flowers_app/lib/features/Widgets/constants.dart';
import 'package:flutter/material.dart';

class BasicHomePage extends StatefulWidget {
  BasicHomePage({super.key});

  static const String routeName = "BasicHomePage";
  @override
  State<BasicHomePage> createState() => _BasicHomePageState();
}

class _BasicHomePageState extends State<BasicHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _pages = <Widget>[
    MainHomePage(),
    CareAboutPage(),
    Conectus()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
        bottomNavigationBar: ClipRRect(
          child: BottomNavigationBar(
            backgroundColor: kWhiteColor,
            unselectedIconTheme: IconThemeData(
              color: kColorBackground,
            ),
            unselectedItemColor: kColorBackground,

            selectedFontSize: 18,
            selectedIconTheme: IconThemeData(color: kColorBackground, size: 40),
            selectedItemColor: kColorBackground,
            selectedLabelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: AppTextStyles.appFont),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "الصفحة الرئيسية",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.grass_rounded),
                label: "التوعية",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.phone),
                label: "الاتصال",
              ),
            ],
            currentIndex: _selectedIndex, //New
            onTap: _onItemTapped,
          ),
        ),
        backgroundColor: kWhiteColor);
  }
}
