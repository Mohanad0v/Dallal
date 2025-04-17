import 'package:equatable/equatable.dart';

class PropertyEntity extends Equatable {
  final int id;
  final String title;
  final String subtitle;
  final String details;
  final String imageUrl;

  const PropertyEntity({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.details,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [id, title, subtitle, details, imageUrl];
}
