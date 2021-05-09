part of 'model.dart';

class Leagues {
  final String? id;
  final String? name;
  final String? sportName;

  Leagues({this.id, this.name, this.sportName});
  factory Leagues.fromJson(Map<String, dynamic> data) {
    return Leagues(
        id: data['idLeague'],
        name: data['strLeague'],
        sportName: data['strSport']);
  }
}
