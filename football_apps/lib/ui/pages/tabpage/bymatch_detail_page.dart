part of 'tabpage.dart';

class ByMatchDetailPage extends StatefulWidget {
  final String? leagueId;
  final String? name;
  ByMatchDetailPage({this.leagueId, this.name});
  @override
  _ByMatchDetailPageState createState() => _ByMatchDetailPageState();
}

class _ByMatchDetailPageState extends State<ByMatchDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F5F0),
      body: Stack(
        children: [
          SafeArea(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: edge),
                  child: FutureBuilder(
                    future: SoccerServices.getMatchList(widget.leagueId),
                    builder: (_, snapshot) {
                      if (snapshot.hasData) {
                        var data = snapshot.data as List<ByMatch>;
                        return Column(
                            children: data
                                .map((e) => Padding(
                                      padding: EdgeInsets.only(
                                          top: data.indexOf(e) == 0 ? 25 : 13),
                                      child: MatchDetailList(e),
                                    ))
                                .toList());
                      } else {
                        return Column(
                          children: [
                            SizedBox(height: 200),
                            Center(child: loadingIndicator)
                          ],
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Container(
              color: Color(0xffF6F5F0),
              padding: EdgeInsets.only(left: edge, top: 10, bottom: 10),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back_ios, color: Colors.black)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text(
                      'Pertandingan di ${widget.name}',
                      style: blackFontStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
