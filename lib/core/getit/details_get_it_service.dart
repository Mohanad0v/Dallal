import 'package:get_it/get_it.dart';

import '../../features/realestate_detailes_screen/data/remote_data_sourec/property_details_data_sourse.dart';
import '../../features/realestate_detailes_screen/domain/repositories/property_details_repo.dart';
import '../../features/realestate_detailes_screen/domain/repositories/property_details_repo_impl.dart';
import '../../features/realestate_detailes_screen/domain/usecases/get_property_details_usecase.dart';
import '../../features/realestate_detailes_screen/presentaition/bloc/property_details_bloc.dart';

final getItDetailObject = GetIt.instance;

void init() {
  getItDetailObject.registerLazySingleton(() => PropertydetailsdataSource());
  getItDetailObject.registerLazySingleton<PropertyDetailsRepo>(() => PropertyDetailsRepoImpl(getItDetailObject()));
  getItDetailObject.registerLazySingleton<GetPropertyDetailsUsecase>(() => GetPropertyDetailsUsecase(getItDetailObject()));
  getItDetailObject.registerFactory(
    () => PropertyDetailsBloc(getItDetailObject(), GetPropertyDetailsUsecase: getItDetailObject),
  );
}
