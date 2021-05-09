part of 'model.dart';

class Search {
  final String? nameCLub;
  final String? league;
  final String? image;
  final String? stadium;
  final String? description;

  Search(
      {this.nameCLub, this.league, this.image, this.stadium, this.description});

  factory Search.fromJson(Map<String, dynamic> data) {
    return Search(
      nameCLub: data['strTeam'] ?? '',
      league: data['strLeague'] ?? '',
      image: data['strTeamBadge'] ??
          'https://pngimg.com/uploads/fifa/fifa_PNG1.png',
      stadium: data['strStadium'],
      description: data['strDescriptionEN'] ?? '',
    );
  }
}
