import 'package:flowers_app/lib/core/utils/constants/app_styles.dart';
import 'package:flowers_app/lib/features/Widgets/constants.dart';
import 'package:flutter/material.dart';

class EarlyTomatoTable extends StatelessWidget {
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
            ' أروميل بلص',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            "WP 50%",
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
          )))
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text(
            ' بورميكس',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            "WP %91.3",
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            '400 جم/ 100 لتر ماء',
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
            ' ترايدكس',
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
            '250 جم/ 100 لتر ماء',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Center(
              child: Text(
            '14',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          ))),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text(
            ' جالبن نحاس',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            "WP 69.8%",
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
            '20',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          ))),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text(
            ' توب سينسور',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            "SC 32.5%",
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Text(
            '200 سم3 / فدان',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          )),
          DataCell(Center(
              child: Text(
            '3',
            style: TextStyle(
              fontFamily: AppTextStyles.appFont,
            ),
          ))),
        ]),
      ],
    );
  }
}
