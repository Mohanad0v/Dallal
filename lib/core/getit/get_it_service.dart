import 'package:get_it/get_it.dart';

import '../../features/realestate_screen/data/remote_data_source/property_datasource.dart';
import '../../features/realestate_screen/domain/repositories/property_repo.dart';
import '../../features/realestate_screen/domain/repositories/property_repo_imp.dart';
import '../../features/realestate_screen/domain/usecases/get_properties_usecase.dart';
import '../../features/realestate_screen/presentation/bloc/property_bloc.dart';



final getItGlobalObject = GetIt.instance;

void init() {
  getItGlobalObject.registerLazySingleton(() => PropertyDatasource());
  getItGlobalObject.registerLazySingleton<PropertyRepo>(() => PropertRepoImpl(getItGlobalObject()));
  getItGlobalObject.registerLazySingleton<GetPropertiesUsecase>(
        () => GetPropertiesUsecase(getItGlobalObject()),
  );
  getItGlobalObject.registerFactory(
        () => PropertyBloc(getItGlobalObject(), GetPropertiesUsecase: getItGlobalObject),
  );
}
