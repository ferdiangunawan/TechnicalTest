import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:football_apps/models/model.dart';
import 'package:football_apps/services/services.dart';

part 'country_event.dart';
part 'country_state.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  CountryBloc() : super(CountryInitial());

  @override
  Stream<CountryState> mapEventToState(
    CountryEvent event,
  ) async* {
    if (event is GetCountryName) {
      List<Country> countryList = await SoccerServices.getListCountry();
      yield CountryNameLoaded(countryList);
    }
  }
}
