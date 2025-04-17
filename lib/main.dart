import 'package:dallal/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'core/getit/get_it_service.dart' as di1;
import 'core/getit/details_get_it_service.dart'as di2;
import 'core/routing/on_generat_routes.dart';
import 'features/splash/presentation/view/splash_view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  di1.init();
  di2.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily:'Cairo',
        scaffoldBackgroundColor:Colors.white,
        colorScheme:ColorScheme.fromSeed(seedColor: AppColors.PrimaryColor),
      ),
      onGenerateRoute:onGenerateRoute,
      initialRoute: SplashView.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
