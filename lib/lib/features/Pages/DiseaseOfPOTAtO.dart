import 'package:flowers_app/lib/core/utils/constants/app_styles.dart';
import 'package:flowers_app/lib/features/Widgets/EarlyPotatoTable.dart';
import 'package:flowers_app/lib/features/Widgets/LatePotatoTable.dart';
import 'package:flowers_app/lib/features/Widgets/constants.dart';
import 'package:flutter/material.dart';

class DiseaseOfPOTATO extends StatelessWidget {
  DiseaseOfPOTATO({super.key});
  static String id = DiseaseOfPOTATO.id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColorBackground,
        foregroundColor: Colors.white,
        title: Text(
          "المرض في البطاطس",
          style: TextStyle(
            color: kWhiteColor,
            fontSize: 28,
            fontFamily: AppTextStyles.appFont,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(6),
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
                  margin: EdgeInsets.only(top: 50, bottom: 50, left: 100),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        bottomLeft: Radius.circular(100)),
                    color: Colors.white.withOpacity(0.7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("المرض في البطاطس",
                        style: TextStyle(
                            fontFamily: AppTextStyles.appFont,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              CustomPadding(
                image: 'assets/images/tomato1.png',
                text: "اللفحة (الندوة) المبكرة",
                children: [
                  ExpansionTile(
                    iconColor: kColorBackground,
                    shape: Border.all(style: BorderStyle.none),
                    title: Text(
                      "تعريف المرض",
                      style: TextStyle(
                        fontFamily: AppTextStyles.appFont,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    textColor: kColorBackground,
                    leading: CircleAvatar(
                      backgroundColor: kWhiteColor,
                      backgroundImage: AssetImage(
                          "assets/images/hand-pointing-to-left-direction.png"),
                    ),
                    children: [
                      Text(
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: AppTextStyles.appFont,
                          ),
                          "اللفحة المبكرة : هو داء فطري يصيب النباتات التابعة للعائلة الباذنجانية وأغلب المحاصيل المتضررة منه هي الطماطم والباذنجان ويظهر بشكل كبير في البطاطس وتظهر الإصابات بالفطر المسبب للفحة المبكرة في مواضع عديدة على النبات مثل: درنات مصابة، إصابات على الأوراق.")
                    ],
                  ),
                  ExpansionTile(
                    shape: Border.all(style: BorderStyle.none),
                    title: Text(
                      "المسبب للمرض",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppTextStyles.appFont,
                      ),
                    ),
                    textColor: kColorBackground,
                    iconColor: kColorBackground,
                    leading: CircleAvatar(
                      backgroundColor: kWhiteColor,
                      backgroundImage: AssetImage(
                          "assets/images/hand-pointing-to-left-direction.png"),
                    ),
                    children: [
                      Text(
                        " ألتيرناريا سولاني ",
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: AppTextStyles.appFont,
                        ),
                      ),
                      Text(
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: AppTextStyles.appFont,
                          ),
                          "هو الفطر المسبب لمرض اللفحة المبكرة يعيش في فصل الشتاء على بقايا النباتات المصابة، أو يمكن إحضاره مع البذور المصابة التي تبدأ المرض في الربيع."),
                      Text(
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: AppTextStyles.appFont,
                          ),
                          "سبب ظهور مرض اللفحة المبكرة هو استخدام بذور ملوثة في الزراعة المائية أو تعرض الشتلات النامية للتلوث. بسبب ملامستها لأوعية ليست نظيفة أو عدم تعقيم يدك عند الزراعة إلخ، ومن هنا تبدأ الفطريات بالنمو على النبات. وبالتحديد النوع ألترناريا سولاني ( مسبب مرض اللفحة المبكرة )، لذلك ينصح باستعمال طرق التعقيم الناجحة في تطهير البذور وأدوات الزراعة."),
                    ],
                  ),
                  ExpansionTile(
                    shape: Border.all(style: BorderStyle.none),
                    title: Text(
                      "الاعراض",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppTextStyles.appFont,
                      ),
                    ),
                    textColor: kColorBackground,
                    iconColor: kColorBackground,
                    leading: CircleAvatar(
                      backgroundColor: kWhiteColor,
                      backgroundImage: AssetImage(
                          "assets/images/hand-pointing-to-left-direction.png"),
                    ),
                    children: [
                      SizedBox(
                        height: 30,
                        child: Text(
                          "ورقة بطاطس مصابة",
                          style: TextStyle(
                            fontFamily: AppTextStyles.appFont,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      Image.asset(
                        "assets/images/ورق بطاطس مصابة.jpg",
                        height: 200,
                        width: 275,
                      ),
                      SizedBox(
                        height: 30,
                        child: Text(
                          "درنة بطاطس مصابة",
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: AppTextStyles.appFont,
                          ),
                        ),
                      ),
                      Image.asset(
                        "assets/images/درنة بطاطس مصابة.jfif",
                        height: 200,
                        width: 300,
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                  ExpansionTile(
                    shape: Border.all(style: BorderStyle.none),
                    title: Text(
                      "طرق الوقاية من المرض",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppTextStyles.appFont,
                      ),
                    ),
                    textColor: kColorBackground,
                    iconColor: kColorBackground,
                    leading: CircleAvatar(
                      backgroundColor: kWhiteColor,
                      backgroundImage: AssetImage(
                          "assets/images/hand-pointing-to-left-direction.png"),
                    ),
                    children: [
                      Text(
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: AppTextStyles.appFont,
                          ),
                          "•  إذا كانت هناك حشائش تنمو مع البطاطس لابد من إزالتها  من البيئة التي يتغذى عليها النبات الأصلي."),
                      Text(
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: AppTextStyles.appFont,
                          ),
                          "•  يراعى عند تخزين المحصول التخلص من الدرنات المصابة."),
                      Text(
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: AppTextStyles.appFont,
                          ),
                          "•  استعمال مبيد فطري من هذه الأنواع للقضاء على الندوة المبكرة بطريقة المكافحة الكيميائية."),
                      Text(
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: AppTextStyles.appFont,
                          ),
                          "•	حرق النباتات المصابة وتعقيم الحاويات التي كانت موضوع فيها هذه الشتلات بعد غسلها قبل البدء في زراعة نباتات جديدة مكانها. "),
                      Text(
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: AppTextStyles.appFont,
                          ),
                          "•	يجب أن توفر تهوية مناسبة لأن دفء الأجواء عامل مساعد لانتشار المرض بين النباتات، كما أن الرطوبة  العالية على مدار اليوم لها دور كبير في نمو المسبب المرضي ( الفطر )"),
                      Text(
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: AppTextStyles.appFont,
                          ),
                          "•	الرش الوقائي عند توفر الظروف المناسبة للمرض . حيث فى حالة زراعة البطاطس يتم الوقاية برش النباتات من الشهر الثاني للزراعة إذا توفرت ظروف مناسبة للمرض."),
                      EarlyPotatoTable()
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomPadding(
                image: 'assets/images/tomato1.png',
                text: "اللفحة (الندوة) المتاخرة",
                children: [
                  ExpansionTile(
                    shape: Border.all(style: BorderStyle.none),
                    title: Text(
                      "تعريف المرض",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: AppTextStyles.appFont,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    textColor: kColorBackground,
                    iconColor: kColorBackground,
                    leading: CircleAvatar(
                      backgroundColor: kWhiteColor,
                      backgroundImage: AssetImage(
                          "assets/images/hand-pointing-to-left-direction.png"),
                    ),
                    children: [
                      Text(
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: AppTextStyles.appFont,
                          ),
                          "مرض اللفحة المتأخرة: هو مرض فطري يصيب  نباتات العائلة الباذنجانية، عن طريق المسبب الفطري فيتوفثورا إنفستنس . وهو ينتشر بشكل سريع في المناطق  ذات الرطوبة العالية ودرجات الحرارة المنخفضة؛ إذ ينمو الفطر على نحو أفضل في هذه الظروف. "),
                      Text(
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: AppTextStyles.appFont,
                          ),
                          " وبسببه يتكبد المزارعون خسائر كبيرة في المحاصيل. في أثناء موسم النمو وحتى فترة التخزين؛ لسرعة انتشاره في المحاصيل اذا لم يتم معالجته. وأكثر ما يصيب محاصيل الطماطم والبطاطس ز  وكما يدل اسمه يحدث المرض في آخر موسم النمو وفي كثير من الأحيان لا تظهر الأعراض إلا بعد الإزهار.")
                    ],
                  ),
                  ExpansionTile(
                    shape: Border.all(style: BorderStyle.none),
                    title: Text(
                      "المسبب للمرض",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppTextStyles.appFont,
                      ),
                    ),
                    textColor: kColorBackground,
                    iconColor: kColorBackground,
                    leading: CircleAvatar(
                      backgroundColor: kWhiteColor,
                      backgroundImage: AssetImage(
                          "assets/images/hand-pointing-to-left-direction.png"),
                    ),
                    children: [
                      Text(
                        " فيتوفثورا إنفستنس ",
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: AppTextStyles.appFont,
                        ),
                      ),
                      Text(
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: AppTextStyles.appFont,
                          ),
                          "هو فطر يعيش متطفلا على النبات حتى يميته كليًا. إذ يكوّن أكياس جرثومية وجراثيم هدبية تنتشر عن طريق الثغور في النبات أو الاختراق المباشر لبشرة النبات. ويتطلب إنبات الأكياس الجرثومية إلى رطوبة عالية وحرارة منخفضة أقل من 24 °C ولمدة 10 ساعات متصلة على الأقل. ومن الممكن أن تحمل مياه الري الأكياس الجرثومية  من مكان لآخر محدثةً عدوى جديدة."),
                    ],
                  ),
                  ExpansionTile(
                    shape: Border.all(style: BorderStyle.none),
                    title: Text(
                      "الاعراض",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppTextStyles.appFont,
                      ),
                    ),
                    textColor: kColorBackground,
                    iconColor: kColorBackground,
                    leading: CircleAvatar(
                      backgroundColor: kWhiteColor,
                      backgroundImage: AssetImage(
                          "assets/images/hand-pointing-to-left-direction.png"),
                    ),
                    children: [
                      SizedBox(
                        height: 30,
                        child: Text(
                          "ورقة بطاطس مصابة",
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: AppTextStyles.appFont,
                          ),
                        ),
                      ),
                      Image.asset(
                        "assets/images/ورقة بطاطس لفحة متاخرة مصابة.jpg",
                        height: 200,
                        width: 275,
                      ),
                      SizedBox(
                        height: 30,
                        child: Text(
                          "درنة بطاطس مصابة",
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: AppTextStyles.appFont,
                          ),
                        ),
                      ),
                      Image.asset(
                        "assets/images/درنة بطاطس لفحة متاخرة.jpg",
                        height: 200,
                        width: 300,
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                  ExpansionTile(
                    shape: Border.all(style: BorderStyle.none),
                    title: Text(
                      "طرق الوقاية من المرض",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppTextStyles.appFont,
                      ),
                    ),
                    textColor: kColorBackground,
                    iconColor: kColorBackground,
                    leading: CircleAvatar(
                      backgroundColor: kWhiteColor,
                      backgroundImage: AssetImage(
                          "assets/images/hand-pointing-to-left-direction.png"),
                    ),
                    children: [
                      Text(
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: AppTextStyles.appFont,
                          ),
                          "•	إتباع دورة زراعية يراعي فيها عدم تعاقب بطاطس وطماطم في نفس الحقل "),
                      Text(
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: AppTextStyles.appFont,
                          ),
                          "•	عدم زراعة طماطم في العروة الشتوية بالقرب من زراعة بطاطس "),
                      Text(
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: AppTextStyles.appFont,
                          ),
                          "•	حرق مخلفات البطاطس والطماطم للتخلص من مصدر العدوى الموجود بها وهو الجراثيم البيضية للفطر "),
                      Text(
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: AppTextStyles.appFont,
                          ),
                          "•	أما المقاومة الكيماوية فتتم برش النباتات4-6 مرات وبين كل رشة والأخرى 15 يومًا بأحد المطهرات الفطرية الموصى بها من قبل وزارة الزراعة ."),
                      LatePotatoTable()
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomPadding extends StatelessWidget {
  CustomPadding({
    super.key,
    this.image,
    required this.text,
    required this.children,
  });
  final String? image;
  final String text;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kWhiteColor,
      shadowColor: kColorBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: ExpansionTile(
        shape: Border.all(style: BorderStyle.none),
        tilePadding: EdgeInsets.all(20),
        title: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: AppTextStyles.appFont,
          ),
        ),
        collapsedIconColor: Colors.black,
        iconColor: kColorBackground,
        textColor: kColorBackground,
        collapsedShape:
            BeveledRectangleBorder(borderRadius: BorderRadius.circular(15)),
        childrenPadding: EdgeInsets.all(20),
        children: children,
      ),
    );
  }
}
