part of 'property_details_bloc.dart';

@immutable
class PropertyDetailsState {
  final NetworkState networkState;
  final PropertyDetailsModel? propertyDetails;
  final String? message;

  const PropertyDetailsState({this.networkState = NetworkState.init, this.propertyDetails, this.message});

  PropertyDetailsState copyWith({
    NetworkState? networkState,
    PropertyDetailsModel? propertyDetails,
    String? message,
  }) {
    return PropertyDetailsState(
      message: message ?? this.message,
      networkState: networkState ?? this.networkState,
      propertyDetails: propertyDetails ?? this.propertyDetails,
    );
  }
}
