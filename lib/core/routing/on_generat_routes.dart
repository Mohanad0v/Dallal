import 'package:dallal/features/realestate_page/presentation/view/realestate_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/realestate_detailes_page/presentaition/view/property_details.dart';
import '../../features/splash/presentation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (contxt) => const SplashView());
    case RealestatePage.routeName:
      return MaterialPageRoute(builder: (contxt) => const RealestatePage());
    case PropertyDetails.routeName:
      return MaterialPageRoute(builder: (contxt) =>  PropertyDetails());
    default:
      return MaterialPageRoute(builder: (contxt) => const Scaffold());
  }
}
