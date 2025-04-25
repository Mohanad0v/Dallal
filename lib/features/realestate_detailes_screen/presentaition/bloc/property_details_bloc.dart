import 'package:bloc/bloc.dart';
import 'package:dallal/core/enums/network_state.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';

import '../../data/models/property_details_model.dart';
import '../../domain/usecases/get_property_details_usecase.dart';

part 'property_details_event.dart';

part 'property_details_state.dart';

class PropertyDetailsBloc
    extends Bloc<PropertyDetailsEvent, PropertyDetailsState> {
  final GetPropertyDetailsUsecase getPropertyDetailsUsecase;

  PropertyDetailsBloc(this.getPropertyDetailsUsecase,
      {required GetIt GetPropertyDetailsUsecase})
      : super(const PropertyDetailsState()) {
    on<PropertyDetailsEvent>((event, emit) async {
      emit(state.copyWith(networkState: NetworkState.loading));
      try {
        final propertyDetails = await getPropertyDetailsUsecase();
        emit(state.copyWith(networkState: NetworkState.loaded,propertyDetails: propertyDetails));
      } catch (e) {
        emit(state.copyWith(networkState: NetworkState.failed));
      }
    });
  }
}
