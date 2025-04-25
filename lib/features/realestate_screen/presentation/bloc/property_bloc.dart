import 'package:bloc/bloc.dart';
import 'package:dallal/core/enums/network_state.dart';
import 'package:meta/meta.dart';
import '../../data/models/property_model.dart';
import '../../domain/usecases/get_properties_usecase.dart';

part 'property_event.dart';

part 'property_state.dart';

class PropertyBloc extends Bloc<PropertyEvent, PropertyState> {
  final GetPropertiesUsecase getPropertiesUsecase;

  PropertyBloc(this.getPropertiesUsecase, {required Object GetPropertiesUsecase}) : super(const PropertyState()) {
    on<LoadPropertyEvent>((event, emit) async {
      emit(state.copyWith(networkState: NetworkState.loading));
      try {
        final List<PropertyModel>properties = await getPropertiesUsecase();
        emit(state.copyWith(networkState: NetworkState.loaded,property: properties));
      } catch (e) {
        emit(state.copyWith(networkState: NetworkState.failed));
      }
    });
  }
}
