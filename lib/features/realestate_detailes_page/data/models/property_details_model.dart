class PropertyDetailsModel {
  final int id;
  final String title;
  final String subTitle;
  final String price;
  final List<String> imagesUrls;
  final String builtYear;
  final String size;
  final String bedsAndBaths;
  final String description;
  final String location;

  const PropertyDetailsModel({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.imagesUrls,
    required this.builtYear,
    required this.size,
    required this.bedsAndBaths,
    required this.description,
    required this.location,
  });

  factory PropertyDetailsModel.fromJson(Map<String, dynamic> json) {
    return PropertyDetailsModel(
      id: json['id'],
      title: json['title'],
      subTitle: json['subTitle'],
      price: json['price'],
      imagesUrls: json['imagesUrls'],
      builtYear: json['builtYear'],
      size: json['size'],
      bedsAndBaths: json['bedsAndBathes'],
      description: json['description'],
      location: json['location'],
    );
  }
}
