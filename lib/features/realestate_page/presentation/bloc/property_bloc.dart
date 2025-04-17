import 'package:bloc/bloc.dart';
import 'package:dallal/features/realestate_page/domain/entites/property_entity.dart';
import 'package:dallal/features/realestate_page/domain/usecases/get_properties_usecase.dart';
import 'package:meta/meta.dart';

part 'property_event.dart';

part 'property_state.dart';

class PropertyBloc extends Bloc<PropertyEvent, PropertyState> {
  final GetPropertiesUsecase getPropertiesUsecase;

  PropertyBloc(this.getPropertiesUsecase, {required Object GetPropertiesUsecase})
      : super(PropertyInitial()) {
    on<LoadPropertyEvent>((event, emit) async {
      emit(PropertyLoading());
      try {
        final properties = await getPropertiesUsecase();
        emit(PropertyLoaded(properties));
      } catch (e) {
        emit(PropertyFailed(e.toString()));
      }
    });
  }
}
