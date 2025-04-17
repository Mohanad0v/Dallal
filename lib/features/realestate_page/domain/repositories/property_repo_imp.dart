import 'package:dallal/features/realestate_page/data/fake_data/property_datasource.dart';
import 'package:dallal/features/realestate_page/domain/repositories/property_repo.dart';

import '../entites/property_entity.dart';

class PropertRepoImpl implements PropertyRepo {
  final PropertyDatasource propertyDatasource;

  PropertRepoImpl(this.propertyDatasource);

  @override
  Future<List<PropertyEntity>> getProperties() async {
    return await propertyDatasource.fetchProperties();
  }
}
