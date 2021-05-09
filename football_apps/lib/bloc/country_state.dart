part of 'country_bloc.dart';

abstract class CountryState extends Equatable {
  const CountryState();

  @override
  List<Object> get props => [];
}

class CountryInitial extends CountryState {}

class CountryNameLoaded extends CountryState {
  final List<Country>? countryName;
  CountryNameLoaded(this.countryName);
  @override
  List<Object> get props => [countryName!];
}
