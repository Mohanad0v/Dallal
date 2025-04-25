import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/realestate_detailes_screen/presentaition/view/property_details._screen.dart';
import '../../features/realestate_screen/presentation/view/realestate_screen.dart';
import '../../features/splash/presentation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (contxt) => const SplashView());
    case RealestateScreen.routeName:
      return MaterialPageRoute(builder: (contxt) => const RealestateScreen());
    case PropertyDetailsScreen.routeName:
      return MaterialPageRoute(builder: (contxt) =>  PropertyDetailsScreen());
    default:
      return MaterialPageRoute(builder: (contxt) => const Scaffold());
  }
}
