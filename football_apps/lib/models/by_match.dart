part of 'model.dart';

class ByMatch {
  final int? id;
  final String? leagueName;
  final String? eventName;
  final String? dateEvent;
  final String? timeEvent;
  final String? image;

  ByMatch(
      {this.id,
      this.leagueName,
      this.eventName,
      this.dateEvent,
      this.timeEvent,
      this.image});

  factory ByMatch.fromJson(Map<String, dynamic> data) {
    return ByMatch(
        leagueName: data['strLeague'],
        eventName: data['strEvent'],
        dateEvent: data['dateEvent'],
        timeEvent: data['strTime'],
        image: data['strThumb'] ??
            'https://pngimg.com/uploads/fifa/fifa_PNG1.png');
  }
}

//dateEvent
