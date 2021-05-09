part of 'model.dart';

class ByCountry {
  final int? id;
  final String? name;
  final String? image;

  ByCountry({this.id, this.name, this.image});

  factory ByCountry.fromJson(Map<String, dynamic> data) {
    return ByCountry(
        name: data['strTeam'],
        image: data['strTeamBadge'] ??
            'https://pngimg.com/uploads/fifa/fifa_PNG1.png');
  }
}
