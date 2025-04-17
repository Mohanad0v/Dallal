import 'package:dallal/features/realestate_detailes_page/presentaition/view/widgets/property_details_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/getit/details_get_it_service.dart';
import '../../../../core/getit/get_it_service.dart';
import '../../../../core/widgets/custom_appbar.dart';
import '../../../realestate_page/presentation/bloc/property_bloc.dart';
import '../../domain/usecases/get_property_details_usecase.dart';
import '../bloc/property_details_bloc.dart';

class PropertyDetails extends StatelessWidget {
  final getPropertyDetailsUsecase =
      getItDetailObject<GetPropertyDetailsUsecase>();

  PropertyDetails({super.key});

  static const routeName = 'propertyDetails';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PropertyDetailsBloc(getItDetailObject(),
          GetPropertyDetailsUsecase: getItDetailObject)
        ..add(LoadPropertyDetailsEvent()),
      child: const Scaffold(
        appBar: CustomAppBar(title:'',),
        body: PropertyDetailsBody(),
      ),
    );
  }
}
