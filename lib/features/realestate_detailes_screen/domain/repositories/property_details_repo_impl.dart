import 'package:dallal/features/realestate_detailes_screen/domain/repositories/property_details_repo.dart';
import '../../data/models/property_details_model.dart';
import '../../data/remote_data_sourec/property_details_data_sourse.dart';

class PropertyDetailsRepoImpl implements PropertyDetailsRepo {
  final PropertydetailsdataSource propertydetailsdataSource;

  PropertyDetailsRepoImpl(this.propertydetailsdataSource);

  @override
  Future<PropertyDetailsModel> getPropertyDetails() async {
    return await propertydetailsdataSource.getPropertyDetails();
  }
}
