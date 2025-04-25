import 'package:dallal/features/realestate_screen/domain/repositories/property_repo.dart';

import '../../data/models/property_model.dart';
import '../../data/remote_data_source/property_datasource.dart';

class PropertRepoImpl implements PropertyRepo {
  final PropertyDatasource propertyDatasource;

  PropertRepoImpl(this.propertyDatasource);

  @override
  Future<List<PropertyModel>> getProperties() async {
    return await propertyDatasource.fetchProperties();
  }
}
