import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:football_apps/models/model.dart';
import 'package:football_apps/services/services.dart';

part 'soccer_event.dart';
part 'soccer_state.dart';

class SoccerBloc extends Bloc<SoccerEvent, SoccerState> {
  SoccerBloc() : super(SoccerInitial());

  @override
  Stream<SoccerState> mapEventToState(
    SoccerEvent event,
  ) async* {
    if (event is SearchClub) {
      List<Search> searchList = await SoccerServices.getSearch(event.clubName);

      yield SearchLoaded(searchList);
    } else if (event is GetLeaguesName) {
      List<Leagues> leaguesList = await SoccerServices.getLeaguesList();
      yield LeaguesNameLoaded(leaguesList
          .where((element) => element.sportName!.contains('Soccer'))
          .toList());
    }
  }
}
