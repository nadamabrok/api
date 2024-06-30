import 'package:flowers_app/lib/core/utils/constants/app_styles.dart';
import 'package:flowers_app/lib/features/Widgets/constants.dart';
import 'package:flutter/material.dart';

class LateTomatoTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: 2,
      horizontalMargin: 1,
      border: TableBorder.all(color: Colors.black),
      headingRowColor: MaterialStatePropertyAll(Colors.green),
      headingTextStyle: TextStyle(color: kWhiteColor),
      columns: <DataColumn>[
        DataColumn(
            label: Text(
          'الاسم التجارى',
          style: TextStyle(
            fontFamily: AppTextStyles.appFont,
          ),
        )),
        DataColumn(
            label: Text(
          "التركيز",
          style: TextStyle(
            fontFamily: AppTextStyles.appFont,
          ),
        )),
        DataColumn(
            label: Text(
          'معدل الاستخدام',
          style: TextStyle(
            fontFamily: AppTextStyles.appFont,
          ),
        )),
        DataColumn(
            label: Text(
          'فترة الأمان ',
          style: TextStyle(
            fontFamily: AppTextStyles.appFont,
          ),
        )),
      ],
      rows: <DataRow>[
        DataRow(cells: <DataCell>[
          DataCell(Text(
            "أكروبات مانكوزيب",
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            "WP 69%",
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            '250 جم/ 100 لتر ماء',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Center(
              child: Text(
            '7',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )))
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text(
            ' أكروبات نحاس',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            "WP 73.2%",
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            '150 جم/ 100 لتر ماء',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Center(
              child: Text(
            '9',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          ))),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text(
            ' بلازموكسيل',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            "WP 72%",
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            '250 جم/ 100 لتر ماء',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Center(
              child: Text(
            '7',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          ))),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text(
            'بيلكوب',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            "WP 85%",
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            '250 جم/ 100 لتر ماء',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Center(
              child: Text(
            '12',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          ))),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text(
            "كيور بلاس",
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            "WP 74.5%",
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            '150 جم/ 100 لتر ماء',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Center(
              child: Text(
            '21',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          ))),
        ]),
      ],
    );
  }
}
