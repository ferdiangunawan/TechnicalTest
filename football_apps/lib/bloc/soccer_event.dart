part of 'soccer_bloc.dart';

abstract class SoccerEvent extends Equatable {
  const SoccerEvent();

  @override
  List<Object> get props => [];
}

class SearchClub extends SoccerEvent {
  final String? clubName;
  SearchClub(this.clubName);
  @override
  List<Object> get props => [clubName!];
}

class GetLeaguesName extends SoccerEvent {
  @override
  List<Object> get props => [];
}
