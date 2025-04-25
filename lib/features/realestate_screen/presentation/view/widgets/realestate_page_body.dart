import 'package:dallal/core/enums/network_state.dart';
import 'package:dallal/features/realestate_screen/presentation/view/widgets/property_card.dart';
import 'package:dallal/features/realestate_screen/presentation/view/widgets/show_all_properties.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/getit/get_it_service.dart';
import '../../../../../core/widgets/custom_appbar.dart';
import '../../../../../core/widgets/custom_category_tabs.dart';
import '../../../../../core/widgets/custom_search_bar.dart';
import '../../../domain/usecases/get_properties_usecase.dart';
import '../../bloc/property_bloc.dart';

class RealestateScreenBody extends StatelessWidget {
  RealestateScreenBody({super.key});

  final getPropertiesUsecase = getItGlobalObject<GetPropertiesUsecase>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PropertyBloc(getItGlobalObject(), GetPropertiesUsecase: getPropertiesUsecase)..add(LoadPropertyEvent()),
      child: Scaffold(
        appBar: const CustomAppBar(
          title: 'Dallal',
        ),
        body: Column(
          children: [
            const CustomSearchBar(hintText: 'Where are you looking?'),
            //const CustomCategoryTabs(),
            Expanded(child: BlocBuilder<PropertyBloc, PropertyState>(builder: (context, state) {
              switch (state.networkState) {
                case NetworkState.init:
                  return const SizedBox();
                case NetworkState.loading:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                case NetworkState.loaded:
                  return ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: state.property!.length,
                      itemBuilder: (context, index) {
                        final property = state.property![index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: PropertyCard(
                            propertyModel: property,
                          ),
                        );
                      });
                case NetworkState.failed:
                  return Center(
                    child: Text(state.message.toString()),
                  );
              }
            })),
            const SizedBox(height: 24),
            const ShowAllButton(),
          ],
        ),
        // bottomNavigationBar: const MyBottomNavigationBar(),
      ),
    );
  }
}
