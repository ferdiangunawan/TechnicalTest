part of 'services.dart';

class SoccerServices {
  static Future<List<ByCountry>> getCountry(String? country,
      {http.Client? client}) async {
    client ??= http.Client();

    String apiCountry =
        "https://www.thesportsdb.com/api/v1/json/1/search_all_teams.php?s=Soccer&c=${country!}";

    var response = await client.get(Uri.parse(apiCountry));
    var data = jsonDecode(response.body);

    List<ByCountry> byCountryList =
        (data['teams'] as Iterable).map((e) => ByCountry.fromJson(e)).toList();
    print(byCountryList);
    if (response.statusCode != 200) {
      return [];
    }
    return byCountryList;
  }

  static Future<List<ByMatch>> getMatchList(String? id,
      {http.Client? client}) async {
    client ??= http.Client();

    String apiMatch =
        "https://www.thesportsdb.com/api/v1/json/1/eventspastleague.php?id=${id!}";

    var response = await client.get(Uri.parse(apiMatch));
    var data = jsonDecode(response.body);

    List<ByMatch> byMatchList =
        (data['events'] as Iterable).map((e) => ByMatch.fromJson(e)).toList();
    print(byMatchList);
    if (response.statusCode != 200) {
      return [];
    }
    return byMatchList;
  }

  static Future<List<Country>> getListCountry({http.Client? client}) async {
    client ??= http.Client();

    String apiCountryList =
        "https://www.thesportsdb.com/api/v1/json/1/all_countries.php";

    var response = await client.get(Uri.parse(apiCountryList));
    var data = jsonDecode(response.body);

    List<Country> countries = (data['countries'] as Iterable)
        .map((e) => Country.fromJson(e))
        .toList();
    if (response.statusCode != 200) {
      return [];
    }
    return countries;
  }

  static Future<List<Leagues>> getLeaguesList({http.Client? client}) async {
    client ??= http.Client();

    String apiLeagues =
        "https://www.thesportsdb.com/api/v1/json/1/all_leagues.php";

    var response = await client.get(Uri.parse(apiLeagues));
    var data = jsonDecode(response.body);

    List<Leagues> leagueList =
        (data['leagues'] as Iterable).map((e) => Leagues.fromJson(e)).toList();
    if (response.statusCode != 200) {
      return [];
    }
    return leagueList;
  }

  static Future<List<Search>> getSearch(String? name,
      {http.Client? client}) async {
    client ??= http.Client();

    String apiSearch =
        "https://www.thesportsdb.com/api/v1/json/1/searchteams.php?t=${name!}";

    var response = await client.get(Uri.parse(apiSearch));
    var data = jsonDecode(response.body);

    List<Search> clubSearch =
        (data['teams'] as Iterable).map((e) => Search.fromJson(e)).toList();
    if (response.statusCode != 200) {
      return [];
    }
    return clubSearch;
  }
}
