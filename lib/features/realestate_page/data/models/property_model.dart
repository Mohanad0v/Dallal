import 'package:dallal/features/realestate_page/domain/entites/property_entity.dart';

class PropertyModel extends PropertyEntity {
  const PropertyModel({
    required int id,
    required String title,
    required String subtitle,
    required String details,
    required String imageUrl,
  }) : super(
          id: id,
          title: title,
          subtitle: subtitle,
          details: details,
          imageUrl: imageUrl,
        );

  factory PropertyModel.fromjson(Map<String, dynamic> json) {
    return PropertyModel(
        id: json['id'],
        title: json['title'],
        subtitle: json['subtitle'],
        details: json['details'],
        imageUrl: json['imageUrl']);
  }
}
