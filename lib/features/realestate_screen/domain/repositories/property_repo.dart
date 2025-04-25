import '../../data/models/property_model.dart';

abstract class PropertyRepo {
  Future<List<PropertyModel>> getProperties();
}
