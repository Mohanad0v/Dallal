import 'package:dallal/core/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../data/models/property_model.dart';

class PropertyCard extends StatelessWidget {
  final PropertyModel propertyModel;

  const PropertyCard({super.key, required this.propertyModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.antiAlias,
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            propertyModel.imageUrl,
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  propertyModel.title,
                  style: AppTextStyles.semiBold15,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  propertyModel.type,
                  style: AppTextStyles.regular13Grey,
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      propertyModel.location,
                      style: AppTextStyles.regular12Grey,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'propertyDetails');
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: AppColors.PrimaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: const Text(
                        'Check Availability',
                        style: AppTextStyles.medium12White,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
