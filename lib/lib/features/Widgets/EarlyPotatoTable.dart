import 'package:flowers_app/lib/core/utils/constants/app_styles.dart';
import 'package:flowers_app/lib/features/Widgets/constants.dart';
import 'package:flutter/material.dart';

class EarlyPotatoTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: 9,
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
            'اكواجن برو',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            "WG 52.5%",
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            "40 جم/ 100 لتر ماء",
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Center(
              child: Text(
            '15',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )))
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text(
            'انادول',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            "WP 80%",
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            "250 جم/ 100 لتر ماء",
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Center(
              child: Text(
            '10',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          ))),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text(
            "التيما تريكس",
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            "WG 52.2%",
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            "40 جم/ 100 لتر ماء",
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
      ],
    );
  }
}
