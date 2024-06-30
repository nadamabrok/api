import 'package:flowers_app/lib/core/utils/constants/app_styles.dart';
import 'package:flowers_app/lib/features/Widgets/CustomPadding.dart';
import 'package:flutter/material.dart';

class ColumnOfContacts extends StatelessWidget {
  const ColumnOfContacts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomPadding(
          subtitletext: "مفتش بذور و حبوب",
          children: [
            ListTile(
              leading: Icon(Icons.message_rounded),
              title: Text(
                "01505456790",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text(
                "khaledrashed@gmail.com",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                "0401111745",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
          ],
          image: "assets/images/farmer.png",
          text: "مهندس / خالد راشد",
        ),
        CustomPadding(
          subtitletext: "اختصاصي الزراعة المائية",
          children: [
            ListTile(
              leading: Icon(Icons.message_rounded),
              title: Text(
                "01228906790",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text(
                "mohamedmahmoud@gmail.com",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                "0403350745",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
          ],
          image: "assets/images/farmer.png",
          text: "مهندس / محمد محمود",
        ),
        CustomPadding(
          subtitletext: "مهندس اختصاصي الزراعة العضوية",
          children: [
            ListTile(
              leading: Icon(Icons.message_rounded),
              title: Text(
                "01113456790",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text(
                "kholodayman@gmail.com",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                "0402411145",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
          ],
          image: "assets/images/farmer.png",
          text: "مهندس / خلود ايمن",
        ),
        CustomPadding(
          subtitletext: "اختصاصي مكافحة افات الصحة العامة",
          children: [
            ListTile(
              leading: Icon(Icons.message_rounded),
              title: Text(
                "01023456790",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text(
                "abdallahahmed@gmail.com",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                "0401126745",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
          ],
          image: "assets/images/farmer.png",
          text: "مهندس / عبدالله احمد",
        ),
        CustomPadding(
          subtitletext: "اختصاصي تسويق زراعي للمبيدات و التقاوي",
          children: [
            ListTile(
              leading: Icon(Icons.message_rounded),
              title: Text(
                "01223455665",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text(
                "sarahany@gmail.com",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                "0402456680",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
          ],
          image: "assets/images/farmer.png",
          text: "مهندس / سارة هاني",
        ),
        CustomPadding(
          subtitletext: "اخصائي نظام الزراعة باستخدام الميكنة الحديثة",
          children: [
            ListTile(
              leading: Icon(Icons.message_rounded),
              title: Text(
                "01209876790",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text(
                "sherenomar@gmail.com",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                "0402888745",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
          ],
          image: "assets/images/farmer.png",
          text: "مهندس / شيرين عمر",
        ),
        CustomPadding(
          subtitletext: "اخصائي انتاج محاصيل الخضر",
          children: [
            ListTile(
              leading: Icon(Icons.message_rounded),
              title: Text(
                "01099561290",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text(
                "hamzamahmoud@gmail.com",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                "0402453455",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
          ],
          image: "assets/images/farmer.png",
          text: "مهندس / حمزة محمود",
        ),
        CustomPadding(
          subtitletext: "استشاري محاصيل",
          children: [
            ListTile(
              leading: Icon(Icons.message_rounded),
              title: Text(
                "01290856790",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text(
                "khaledahmed@gmail.com",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                "0403716745",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
          ],
          image: "assets/images/farmer.png",
          text: "مهندس / خالد احمد",
        ),
        CustomPadding(
          subtitletext: "يعمل لدي الهيئة العامة للزراعة",
          children: [
            ListTile(
              leading: Icon(Icons.message_rounded),
              title: Text(
                "01003456790",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text(
                "mahamedmedht@gmail.com",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                "0402456990",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
          ],
          image: "assets/images/farmer.png",
          text: "مهندس / محمود مدحت",
        ),
        CustomPadding(
          subtitletext: "يعمل لدي مجال الأسمدة وكفاءتها",
          children: [
            ListTile(
              leading: Icon(Icons.message_rounded),
              title: Text(
                "01223556670",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text(
                "sehamayman@gmail.com",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                "0302456745",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
          ],
          image: "assets/images/farmer.png",
          text: "مهندس / سهام ايمن",
        ),
        CustomPadding(
          subtitletext: "مهندس اختصاصي الزراعة العضوية",
          children: [
            ListTile(
              leading: Icon(Icons.message_rounded),
              title: Text(
                "01113456790",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text(
                "larahassan@gmail.com",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                "0402452000",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
          ],
          image: "assets/images/farmer.png",
          text: "مهندس / لارا حسن",
        ),
        CustomPadding(
          subtitletext: "يعمل لدي الهيئة العامة للزراعة",
          children: [
            ListTile(
              leading: Icon(Icons.message_rounded),
              title: Text(
                "01000456790",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text(
                "salmamahmoud@gmail.com",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                "0403344745",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
          ],
          image: "assets/images/farmer.png",
          text: "مهندس / سلمي محمود",
        ),
        CustomPadding(
          subtitletext: "يعمل لدي مجال الأسمدة وكفاءتها",
          children: [
            ListTile(
              leading: Icon(Icons.message_rounded),
              title: Text(
                "01550056790",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text(
                "toqaali@gmail.com",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                "0402776745",
                style: TextStyle(
                    color: Color(0xff1B4F1F),
                    fontFamily: AppTextStyles.appFont),
              ),
            ),
          ],
          image: "assets/images/farmer.png",
          text: "مهندس / تقي علي",
        ),
      ],
    );
  }
}
