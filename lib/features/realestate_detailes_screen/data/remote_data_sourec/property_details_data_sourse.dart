import '../models/property_details_model.dart';

class PropertydetailsdataSource {
  Future<PropertyDetailsModel> getPropertyDetails() async {
    await Future.delayed(const Duration(seconds: 2));
    return const PropertyDetailsModel(
      id: 1,
      title: 'Palm Springs',
      subTitle: 'Modern house in Palm Springs',
      price: '\$2,000,000',
      imagesUrls: [
        'assets/images/property_details_1.png',
        'assets/images/property_details_2.png',
        'assets/images/property_details_3.png',
        'assets/images/property_details_4.png',
        'assets/images/property_details_5.png',
      ],
      builtYear: 'Built in 2019',
      size: '1,800 sqft',
      bedsAndBaths: '3 beds 2 baths',
      description: 'A modern masterpiece in the heart of Palm Springs. This home features an open floor plan, high ceilings, and a pool.',
      location: '',
    );
  }
}
