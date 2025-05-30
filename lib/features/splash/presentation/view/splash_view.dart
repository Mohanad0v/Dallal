import 'package:dallal/features/splash/presentation/view/widgets/splash_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget{
  const SplashView ({super.key});
  static const routeName='splash';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}