part of 'model.dart';

class Country {
  final String? name;

  Country({this.name});
  factory Country.fromJson(Map<String, dynamic> data) {
    return Country(name: data['name_en']);
  }
}
