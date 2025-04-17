import 'package:dallal/features/realestate_page/domain/entites/property_entity.dart';
import 'package:dallal/features/realestate_page/domain/repositories/property_repo.dart';

class GetPropertiesUsecase {
  final PropertyRepo propertyRepo;

  GetPropertiesUsecase(this.propertyRepo);

  Future<List<PropertyEntity>> call() async {
    return await propertyRepo.getProperties();
  }
}
