import '../models/property_model.dart';

class PropertyDatasource{
  Future<List<PropertyModel>> fetchProperties()async{
    await Future.delayed(const Duration(seconds: 2));
    return [
      const PropertyModel(
        id: 1,
        title: 'Entire home in San Francisco',
        subtitle: 'Modern and spacious with a great view',
        details: '1,000 sq ft · 2 beds · 1 bath',
        imageUrl: 'assets/images/property_image_1.png',
      ),
      const PropertyModel(
        id: 2,
        title: 'Entire villa in Napa Valley',
        subtitle: 'Beautiful vineyard views',
        details: '1,500 sq ft · 2 beds · 1 bath',
        imageUrl: 'assets/images/property_image_2.png',
      ),
      const PropertyModel(
        id: 3,
        title: 'Entire home in San Francisco',
        subtitle: 'Modern and spacious with a great view',
        details: '1,000 sq ft · 2 beds · 1 bath',
        imageUrl: 'assets/images/property_image_3.png',
      ),
    ];
  }
}