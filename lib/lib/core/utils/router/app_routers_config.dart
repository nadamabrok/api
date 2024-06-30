import 'package:flowers_app/lib/features/Pages/BasicPage.dart';
import 'package:flowers_app/lib/features/Pages/StartPage.dart';
import 'package:flowers_app/lib/features/home/data/models/prediction_model.dart';
import 'package:flowers_app/lib/features/home/presentation/pages/home_page.dart';
import 'package:flowers_app/lib/features/prediction_details/pages/prediction_details_page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RoutesManager {
  static Route<dynamic> routes(RouteSettings settings) {
    final Widget page;

    switch (settings.name) {
      case StartPage.routeName:
        page = StartPage();

      case BasicHomePage.routeName:
        page = BasicHomePage();

      case HomePage.routeName:
        page = const HomePage();

      case PredictionDetailsPage.routeName:
        final arguments = settings.arguments as List;

        page = PredictionDetailsPage(
          predictionModel: arguments[0] as PredictionModel,
          imagePath: arguments[1] as String,
        );

      default:
        page = StartPage();
    }

    return MaterialPageRoute(
      builder: (context) => ResponsiveScaledBox(
          width: ResponsiveValue<double>(context, conditionalValues: const [
            Condition.between(
                start: 0, end: 450, value: 375, landscapeValue: 500),
            Condition.between(
                start: 450, end: 800, value: 500, landscapeValue: 750),
            Condition.between(
                start: 800, end: 1100, value: 530, landscapeValue: 850),
            Condition.between(
                start: 1100, end: 1400, value: 640, landscapeValue: 880),
            Condition.between(
                start: 1400, end: 9999, value: 700, landscapeValue: 1100),
          ]).value,
          child: page),
      settings: settings,
    );
  }
}
