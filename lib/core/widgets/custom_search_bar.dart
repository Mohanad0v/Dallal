import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_text_styles.dart';

class CustomSearchBar extends StatelessWidget {
  final String hintText;

  const CustomSearchBar({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xffF2F2F2),
          prefixIcon: const Icon(Icons.search),
          hintText: hintText,
          hintStyle: AppTextStyles.regular14,
          // hintStyle: const TextStyle(color: Color(0xff757575)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
