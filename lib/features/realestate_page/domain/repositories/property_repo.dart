import '../entites/property_entity.dart';

abstract class PropertyRepo {
  Future<List<PropertyEntity>> getProperties();
}
