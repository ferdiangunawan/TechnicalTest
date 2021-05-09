part of 'soccer_bloc.dart';

abstract class SoccerState extends Equatable {
  const SoccerState();

  @override
  List<Object> get props => [];
}

class SoccerInitial extends SoccerState {}

class SearchLoaded extends SoccerState {
  final List<Search>? search;
  SearchLoaded(this.search);
  @override
  List<Object> get props => [search!];
}

class LeaguesNameLoaded extends SoccerState {
  final List<Leagues>? leaguesName;
  LeaguesNameLoaded(this.leaguesName);
  @override
  List<Object> get props => [leaguesName!];
}
