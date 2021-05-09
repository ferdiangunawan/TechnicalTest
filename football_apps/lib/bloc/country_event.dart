part of 'country_bloc.dart';

abstract class CountryEvent extends Equatable {
  const CountryEvent();

  @override
  List<Object> get props => [];
}

class GetCountryName extends CountryEvent {
  @override
  List<Object> get props => [];
}
