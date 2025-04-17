import 'package:dallal/features/realestate_detailes_page/domain/repositories/property_details_repo.dart';

import '../../data/fake_data/property_details_data_sourse.dart';
import '../../data/models/property_details_model.dart';

class PropertyDetailsRepoImpl implements PropertyDetailsRepo {
  final PropertydetailsdataSource propertydetailsdataSource;

  PropertyDetailsRepoImpl(this.propertydetailsdataSource);

  @override
  Future<PropertyDetailsModel> getPropertyDetails() async {
    return await propertydetailsdataSource.getPropertyDetails();
  }
}
