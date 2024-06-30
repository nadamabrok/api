import 'package:flowers_app/lib/core/utils/constants/app_styles.dart';
import 'package:flowers_app/lib/features/Widgets/EarlyTomatoTable.dart';
import 'package:flowers_app/lib/features/Widgets/LateTomatoTable.dart';
import 'package:flowers_app/lib/features/Widgets/constants.dart';
import 'package:flutter/material.dart';

class DiseaseOfTomato extends StatelessWidget {
  DiseaseOfTomato({super.key});
  static String id = DiseaseOfTomato.id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColorBackground,
        foregroundColor: Colors.white,
        title: Text(
          "المرض في الطماطم",
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
                    image: AssetImage("assets/images/tomatoBackGround.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 50, bottom: 50, left: 110),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        bottomLeft: Radius.circular(100)),
                    color: Colors.white.withOpacity(0.7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("المرض في الطماطم",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: AppTextStyles.appFont)),
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
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: AppTextStyles.appFont),
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
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
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
                          fontFamily: AppTextStyles.appFont),
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
                            fontSize: 22, fontFamily: AppTextStyles.appFont),
                      ),
                      Text(
                          style: TextStyle(
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
                          "هو الفطر المسبب لمرض اللفحة المبكرة يعيش في فصل الشتاء على بقايا النباتات المصابة، أو يمكن إحضاره مع البذور المصابة التي تبدأ المرض في الربيع ."),
                      Text(
                          style: TextStyle(
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
                          "يظهر المرض بسبب استخدام بذور ملوثة في الزراعة المائية أو تعرض الشتلات النامية للتلوث. بسبب ملامستها لأوعية ليست نظيفة أو عدم تعقيم يدك عند الزراعة إلخ، ومن هنا تبدأ الفطريات بالنمو على النبات. وبالتحديد النوع ألترناريا سولاني ( مسبب مرض اللفحة المبكرة )، لذلك ينصح باستعمال طرق التعقيم الناجحة في تطهير البذور وأدوات الزراعة . ")
                    ],
                  ),
                  ExpansionTile(
                    shape: Border.all(style: BorderStyle.none),
                    title: Text(
                      "الاعراض",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                          "ورقة طماطم مصابة",
                          style: TextStyle(
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
                        ),
                      ),
                      Image.asset(
                        "assets/images/tomatoEarlyBlight_leaf.jpg",
                        height: 200,
                        width: 275,
                      ),
                      SizedBox(
                        height: 30,
                        child: Text(
                          "ساق طماطم مصابة",
                          style: TextStyle(
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
                        ),
                      ),
                      Image.asset(
                        "assets/images/tomatoEarlyBlight_leg.jpg",
                        height: 200,
                        width: 300,
                      ),
                      SizedBox(
                        height: 30,
                        child: Text(
                          "ثمرة طماطم مصابة",
                          style: TextStyle(
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
                        ),
                      ),
                      Image.asset(
                        "assets/images/tomatoEarlyBlight_plant.png",
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
                          fontFamily: AppTextStyles.appFont),
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
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
                          "•	ازرع الطماطم تحت نفق بلاستيكي جيد التهوية يحافظ على جفاف أوراق الشجر والرطوبة النسبية منخفضة."),
                      Text(
                          style: TextStyle(
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
                          "•	تجنب الرطوبة العالية عن طريق تجنب الزراعة الكثيفة و تحسين التهوية و الإعتدال بالري."),
                      Text(
                          style: TextStyle(
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
                          "•	تقليل تجريح النباتات و التخلص من الأوراق السفلية المصابة فور ملاحظتها."),
                      Text(
                          style: TextStyle(
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
                          "•	زراعة بذور سليمة معقمة من مصادر موثوقة لأن الفطر قد يحمل سطحيا على البذور."),
                      Text(
                          style: TextStyle(
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
                          "•	الرش الوقائي عند توفر الظروف المناسبة للمرض. في الطماطم يتم الرش الدوري في الحقل بعد حوالي 3 أسابيع من الشتل – كل أسبوعين – بأحد المبيدات التي سيلي ذكرها."),
                      EarlyTomatoTable()
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
                          fontWeight: FontWeight.bold,
                          fontFamily: AppTextStyles.appFont),
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
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
                          "مرض اللفحة المتأخرة: هو مرض فطري يصيب  نباتات العائلة الباذنجانية، عن طريق المسبب الفطري فيتوفثورا إنفستنس . وهو ينتشر بشكل سريع في المناطق  ذات الرطوبة العالية ودرجات الحرارة المنخفضة؛ إذ ينمو الفطر على نحو أفضل في هذه الظروف. "),
                      Text(
                          style: TextStyle(
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
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
                          fontFamily: AppTextStyles.appFont),
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
                            fontSize: 22, fontFamily: AppTextStyles.appFont),
                      ),
                      Text(
                          style: TextStyle(
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
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
                          fontFamily: AppTextStyles.appFont),
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
                          "ورقة طماطم مصابة",
                          style: TextStyle(
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
                        ),
                      ),
                      Image.asset(
                        "assets/images/tomatoLateBlight_leaf.jpg",
                        height: 200,
                        width: 275,
                      ),
                      SizedBox(
                        height: 30,
                        child: Text(
                          "ساق طماطم مصابة",
                          style: TextStyle(
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
                        ),
                      ),
                      Image.asset(
                        "assets/images/tomatoLateBlight_leg.jpg",
                        height: 200,
                        width: 300,
                      ),
                      SizedBox(
                        height: 30,
                        child: Text(
                          "ثمرة طماطم مصابة",
                          style: TextStyle(
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
                        ),
                      ),
                      Image.asset(
                        "assets/images/tomatoLateBlight_plant.jpg",
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
                          fontFamily: AppTextStyles.appFont),
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
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
                          "•	باعد بين نباتاتك أثناء الزراعة ؛ ليتدفق الهواء فيما بينِها ."),
                      Text(
                          style: TextStyle(
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
                          "•	التخلص من بقايا النباتات بعد الحصاد ، إما بالدفن في مناطق جافة أو الحرق  أو إطعامها للماشية ، وعدم استخدامها كسماد ."),
                      Text(
                          style: TextStyle(
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
                          "•	اتباع دورة زراعية لا تتكرر فيها زراعة نفس الصنف على عامين متتاليين، وبادل بين الأصناف في كل سنة."),
                      Padding(
                        padding: const EdgeInsets.only(left: 88),
                        child: Text(
                            style: TextStyle(
                                fontSize: 19,
                                fontFamily: AppTextStyles.appFont),
                            "•	زراعة الأصناف الأكثر مقاومة للمرض."),
                      ),
                      Text(
                          style: TextStyle(
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
                          "•	زرع بذور نباتات موثوقة. وهنا في تقنيات الزراعة الحديثة. نوفر لك أفضل أنواع البذور، اضغط هنا للتعرف على أنواع البذور المتوفرة."),
                      Text(
                          style: TextStyle(
                              fontSize: 19, fontFamily: AppTextStyles.appFont),
                          "•	استخدام المبيدات الفطرية قبل الاصابة اذا كنت في مناطق رطبة وباردة، أو كان هناك تفشي لهذه الآفة في منطقتك. وسنذكر أفضل أنواع المبيدات الفطرية التي من شأنها الوقاية من اللفحة المتأخرة والقضاء عليها."),
                      LateTomatoTable()
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
              fontFamily: AppTextStyles.appFont),
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
