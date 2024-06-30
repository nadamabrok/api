import 'package:flowers_app/lib/core/utils/constants/app_styles.dart';
import 'package:flowers_app/lib/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});
  static const String routeName = "MainHomeIntroPage";
  static Color kColorBackground = const Color(0xff50B227);
  static Color kWhiteColor = const Color(0xffFFFFFF);
  static String appFont = "dubai";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "نبات صحي",
          style: TextStyle(
              color: kWhiteColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: AppTextStyles.appFont),
        ),
        centerTitle: true,
        backgroundColor: kColorBackground,
      ),
      backgroundColor: const Color(0xffFFFFFF),
      body: Column(
        children: [
          Image.asset(
            "assets/images/Logo22222.png",
            height: 225,
            width: 250,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/seedIcon.png"))),
              ),
              Text(
                "للحصول علي نبات صحي :",
                style: TextStyle(
                    color: kColorBackground,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppTextStyles.appFont),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 17, left: 17, right: 17),
              child: Column(
                children: [
                  Center(
                      child: Text(
                    " تعتبر النباتات الطبيعية من أهم الكائنات الحية التي خلقها الله على هذا الكوكب ، حيث تعمل على تنقية الهواء وإنتاج الأكسجين ، إلى جانب فوائدها الغذائية والطبية المتعددة ، كما أنها من أهم المواد الخام للكثير من الصناعات ، وجزء لا يتجزأ من البيئة المحيطة للإنسان والحيوان .",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
                  SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: Text(
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: AppTextStyles.appFont,
                        ),
                        " و لأن النبات هو الكائن الوحيد المنتج على سطح الكرة الأرضية ونظراً للتزايد المستمر في أعداد السكان على الأرض وما يتطلبه ذلك من الحفاظ على كل ثمرة من ثمار المحصول ، لذلك فقد ركزنا على كيفية حماية النبات بأشكاله المختلفة من الأمراض ومن الأمراض التى قد تصيب النباتات ."),
                  )
                ],
              ),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(kColorBackground),
            ),
            onPressed: () {
              // ignore: prefer_const_constructors
              Navigator.pushNamed(context, HomePage.routeName);
            },
            child: Text(
              "بدء الاستخدام",
              style: TextStyle(
                  fontFamily: AppTextStyles.appFont,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: kWhiteColor),
            ),
          )
        ],
      ),
    );
  }
}
