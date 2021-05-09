part of 'tabpage.dart';

class ByCountryDetailPage extends StatefulWidget {
  final String? countryName;
  ByCountryDetailPage(this.countryName);
  @override
  _ByCountryDetailPageState createState() => _ByCountryDetailPageState();
}

class _ByCountryDetailPageState extends State<ByCountryDetailPage> {
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
                    future: SoccerServices.getCountry(widget.countryName),
                    builder: (_, snapshot) {
                      if (snapshot.hasData) {
                        var data = snapshot.data as List<ByCountry>;
                        return Column(
                            children: data
                                .map((e) => Padding(
                                      padding: EdgeInsets.only(
                                          top: data.indexOf(e) == 0 ? 25 : 13),
                                      child: CountryList(e),
                                    ))
                                .toList());
                      } else {
                        return Column(
                          children: [
                            SizedBox(height: 400),
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
                  Text(
                    'Club di negara ${widget.countryName}',
                    style: blackFontStyle,
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
