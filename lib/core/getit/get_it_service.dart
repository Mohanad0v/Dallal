import 'package:dallal/features/realestate_page/presentation/bloc/property_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../features/realestate_page/data/fake_data/property_datasource.dart';
import '../../features/realestate_page/domain/repositories/property_repo.dart';
import '../../features/realestate_page/domain/repositories/property_repo_imp.dart';
import '../../features/realestate_page/domain/usecases/get_properties_usecase.dart';

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
