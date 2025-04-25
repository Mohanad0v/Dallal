import 'package:dallal/core/enums/network_state.dart';
import 'package:dallal/core/utils/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/property_details_bloc.dart';

class PropertyDetailsScreenBody extends StatelessWidget {
  const PropertyDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PropertyDetailsBloc, PropertyDetailsState>(
      builder: (context, state) {
        switch (state.networkState) {
          case NetworkState.init:
            return const SizedBox();
          case NetworkState.loading:
            return const Center(child: CircularProgressIndicator());
          case NetworkState.loaded:
            final details = state.propertyDetails;
            return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(details!.title, style: AppTextStyles.bold20),
                  Text(details.subTitle, style: AppTextStyles.regular16),
                  Text(details.price, style: AppTextStyles.regular13Grey),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 150,
                    child: CarouselView(
                        itemExtent: 100,
                        children: details.imagesUrls.map((url) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              url,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          );
                        }).toList()),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'About this property',
                    style: AppTextStyles.medium14,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.home_outlined),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(details.builtYear),
                          Text(details.size),
                          Text(details.bedsAndBaths),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(details.description),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Contact agent'),
                    ),
                  ),
                ],
              ),
            );
          case NetworkState.failed:
            return Text(state.message.toString());
        }
      },
    );
  }
}
