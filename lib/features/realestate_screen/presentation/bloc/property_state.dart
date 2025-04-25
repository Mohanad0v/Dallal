part of 'property_bloc.dart';

@immutable
class PropertyState {
  final NetworkState networkState;
  final List<PropertyModel>? property;
  final String? message;

  const PropertyState({this.networkState = NetworkState.init, this.property, this.message});

  PropertyState copyWith({
    NetworkState? networkState,
    List<PropertyModel>? property,
    String? message,
  }) {
    return PropertyState(
      message: message ?? this.message,
      networkState: networkState ?? this.networkState,
      property: property ?? this.property,
    );
  }
}
