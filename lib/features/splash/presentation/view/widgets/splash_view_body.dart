import 'package:dallal/core/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PrimaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 24,
            ),
            Image.asset(
              'assets/images/splash_image.png',
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 492),
            Container(
                padding: const EdgeInsets.all(16),
                child: const Text(
                  'Powered by Dallal',
                  style: AppTextStyles.semiBold15,
                )),
            const SizedBox(
              height: 24,
            ),
            Container(
                padding: const EdgeInsets.all(16),
                child: const Text('All rights reserved.',
                    style: AppTextStyles.light12Grey)),
          ],
        ),
      ),
    );
  }

  void excuteNavigation() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'realestatPage');
    });
  }
}
