import '../../data/models/property_model.dart';
import '../repositories/property_repo.dart';

class GetPropertiesUsecase {
  final PropertyRepo propertyRepo;

  GetPropertiesUsecase(this.propertyRepo);

  Future<List<PropertyModel>> call() async {
    return await propertyRepo.getProperties();
  }
}
