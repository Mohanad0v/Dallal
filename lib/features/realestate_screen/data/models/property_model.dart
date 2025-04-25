class PropertyModel {
  final int id;
  final String title;
  final String subtitle;
  final String type;
  final String location;
  final String status;
  final int price;
  final double size;
  final int bedrooms;
  final int bathrooms;
  final bool furnished;
  final String description;
  final String dallalName;
  final String dallalPhone;
  final String listingDate;
  final bool verified;
  final String details;
  final String imageUrl;

  const PropertyModel({
    required this.type,
    required this.status,
    required this.price,
    required this.location,
    required this.size,
    required this.bedrooms,
    required this.bathrooms,
    required this.furnished,
    required this.description,
    required this.dallalName,
    required this.dallalPhone,
    required this.listingDate,
    required this.verified,
    required this.id,
    required this.title,
    required this.subtitle,
    required this.details,
    required this.imageUrl,
  });

  factory PropertyModel.fromJson(Map<String, dynamic> json) {
    return PropertyModel(
      id: json['id'],
      title: json['title'],
      subtitle: json['subtitle'],
      details: json['details'],
      imageUrl: json['imageUrl'],
      type: json['type'],
      location: json['location'],
      status: json['status'],
      price: json['price'],
      size: json['size'],
      bedrooms: json['bedrooms'],
      bathrooms: json['bathrooms'],
      furnished: json['furnished'],
      description: json['description'],
      dallalName: json['dallalName'],
      dallalPhone: json['dallalPhone'],
      listingDate: json['listingDate'],
      verified: json['verified'],
    );
  }
}
