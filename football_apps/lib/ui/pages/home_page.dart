part of 'page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    CustomTabBar(
                      selectedIndex: selectedPage,
                      titles: [
                        'By Country',
                        'By Match',
                      ],
                      onTap: (index) {
                        setState(() {
                          selectedPage = index;
                        });
                        pageController.jumpToPage(selectedPage);
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: PageView(
                        controller: pageController,
                        onPageChanged: (index) {
                          setState(() {
                            selectedPage = index;
                          });
                        },
                        children: [
                          ByCountryPage(),
                          ByMatchPage(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
