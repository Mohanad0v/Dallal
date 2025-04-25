import '../../data/models/property_details_model.dart';
import '../repositories/property_details_repo.dart';

class GetPropertyDetailsUsecase {
  final PropertyDetailsRepo propertyDetailsRepo;

  GetPropertyDetailsUsecase(this.propertyDetailsRepo);

  Future<PropertyDetailsModel> call() async {
    return await propertyDetailsRepo.getPropertyDetails();
  }
}
