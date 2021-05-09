part of 'page.dart';

class SearchClubPage extends StatefulWidget {
  @override
  _SearchClubPageState createState() => _SearchClubPageState();
}

TextEditingController searchController = TextEditingController();

class _SearchClubPageState extends State<SearchClubPage> {
  bool isSearch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: edge),
            child: ListView(
              children: [
                Column(
                  children: [
                    SizedBox(height: 60),
                    isSearch
                        ? BlocBuilder<SoccerBloc, SoccerState>(
                            builder: (_, searchState) {
                            if (searchState is SearchLoaded) {
                              List<Search> data = searchState.search!;
                              return Column(
                                children: data
                                    .map((e) => Padding(
                                          padding: EdgeInsets.only(
                                              top: data.indexOf(e) == 0
                                                  ? 10
                                                  : 15),
                                          child: SearchListCard(e),
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
                          })
                        : Center(child: Image.asset('assets/search_icon.jpg'))
                  ],
                ),
              ],
            ),
          )),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Pencarian Club',
                      style: blackFontStyle.copyWith(
                          fontSize: 22, fontWeight: FontWeight.w500)),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width * .75,
                          child: TextField(
                              cursorColor: Colors.black,
                              controller: searchController,
                              decoration: InputDecoration(
                                  isDense: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: colorAccent),
                                      borderRadius: BorderRadius.circular(8)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.circular(8)),
                                  hintStyle: blackFontStyle.copyWith(
                                      color: Colors.grey),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  hintText: 'Search Club')),
                        ),
                        SizedBox(width: 6),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                isSearch = true;
                              });
                              context
                                  .read<SoccerBloc>()
                                  .add(SearchClub(searchController.text));
                            },
                            child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.amberAccent),
                                child: Icon(Icons.search,
                                    size: 30, color: Colors.lightBlue)))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
