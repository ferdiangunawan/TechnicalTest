part of 'tabpage.dart';

class ByMatchPage extends StatefulWidget {
  @override
  _ByMatchPageState createState() => _ByMatchPageState();
}

class _ByMatchPageState extends State<ByMatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        BlocBuilder<SoccerBloc, SoccerState>(builder: (_, state) {
          if (state is LeaguesNameLoaded) {
            List<Leagues> leaguesnameList = state.leaguesName!;
            return Column(
              children: leaguesnameList
                  .map((e) => Padding(
                        padding: EdgeInsets.only(
                            top: leaguesnameList.indexOf(e) == 0 ? 26 : 10,
                            bottom: leaguesnameList.indexOf(e) ==
                                    leaguesnameList.length - 1
                                ? 30
                                : 0),
                        child: MatchCard(
                          name: e.name,
                          image: 'assets/fifa.png',
                          onTap: () {
                            Get.to(() => ByMatchDetailPage(
                                name: e.name, leagueId: e.id));
                          },
                        ),
                      ))
                  .toList(),
            );
          } else {
            return Column(
              children: [
                SizedBox(height: 400),
                Center(child: loadingIndicator)
              ],
            );
          }
        }),
      ],
    ));
  }
}
