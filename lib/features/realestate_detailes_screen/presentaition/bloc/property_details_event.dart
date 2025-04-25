part of 'property_details_bloc.dart';

@immutable
sealed class PropertyDetailsEvent {}

class LoadPropertyDetailsEvent extends PropertyDetailsEvent{}
