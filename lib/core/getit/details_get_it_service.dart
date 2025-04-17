import 'package:get_it/get_it.dart';

import '../../features/realestate_detailes_page/data/fake_data/property_details_data_sourse.dart';
import '../../features/realestate_detailes_page/domain/repositories/property_details_repo.dart';
import '../../features/realestate_detailes_page/domain/repositories/property_details_repo_impl.dart';
import '../../features/realestate_detailes_page/domain/usecases/get_property_details_usecase.dart';
import '../../features/realestate_detailes_page/presentaition/bloc/property_details_bloc.dart';

final getItDetailObject = GetIt.instance;

void init() {
  getItDetailObject.registerLazySingleton(() => PropertydetailsdataSource());
  getItDetailObject.registerLazySingleton<PropertyDetailsRepo>(() => PropertyDetailsRepoImpl(getItDetailObject()));
  getItDetailObject.registerLazySingleton<GetPropertyDetailsUsecase>(() => GetPropertyDetailsUsecase(getItDetailObject()));
  getItDetailObject.registerFactory(
    () => PropertyDetailsBloc(getItDetailObject(), GetPropertyDetailsUsecase: getItDetailObject),
  );
}
