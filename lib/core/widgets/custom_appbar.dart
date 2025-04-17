import 'package:flutter/material.dart';
import '../utils/app_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(
          title,
          style: AppTextStyles.semiBold18,
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          ),
        ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

