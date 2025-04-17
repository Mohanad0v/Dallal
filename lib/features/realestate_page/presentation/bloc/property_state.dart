part of 'property_bloc.dart';

@immutable
sealed class PropertyState {}

final class PropertyInitial extends PropertyState {}

final class PropertyLoading extends PropertyState {}

final class PropertyLoaded extends PropertyState {
  final List<PropertyEntity> properties;

  PropertyLoaded(this.properties);
}

final class PropertyFailed extends PropertyState {
  final String message;

  PropertyFailed(this.message);
}
