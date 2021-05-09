part of 'tabpage.dart';

class ByCountryPage extends StatefulWidget {
  @override
  _ByCountryPageState createState() => _ByCountryPageState();
}

class _ByCountryPageState extends State<ByCountryPage> {
  bool isSoccer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          child: BlocBuilder<CountryBloc, CountryState>(builder: (_, state) {
            if (state is CountryNameLoaded) {
              List<Country> countryLists = state.countryName!;
              return Column(
                children: countryLists
                    .map((e) => Padding(
                          padding: EdgeInsets.only(
                              top: countryLists.indexOf(e) == 0 ? 26 : 10),
                          child: CountryCard(
                            name: e.name,
                            image: 'assets/fifa.png',
                            onTap: () {
                              Get.to(() => ByCountryDetailPage(e.name));
                            },
                          ),
                        ))
                    .toList(),
              );
            } else {
              return Column(
                children: [
                  SizedBox(height: 200),
                  Center(child: loadingIndicator)
                ],
              );
            }
          }),
        )
      ],
    ));
  }
}
