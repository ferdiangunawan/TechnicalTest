part of 'widget.dart';

class CustomTabBar extends StatelessWidget {
  final int? selectedIndex;
  final Function(int index)? onTap;
  final List<String>? titles;
  CustomTabBar(
      {@required this.selectedIndex, this.onTap, @required this.titles});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 48),
            height: 1,
            color: Color(0xffF2F2F2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: titles!
                .map((e) => Padding(
                      padding: EdgeInsets.only(left: edge),
                      child: Column(
                        children: [
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              onTap!(titles!.indexOf(e));
                            },
                            child: Text(e,
                                style: (titles!.indexOf(e) == selectedIndex)
                                    ? blackFontStyle.copyWith(
                                        fontWeight: FontWeight.w500)
                                    : blackFontStyle.copyWith(
                                        color: Colors.grey)),
                          ),
                          Spacer(),
                          Container(
                            height: 3,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1.5),
                                color: (titles!.indexOf(e) == selectedIndex)
                                    ? Colors.redAccent[700]
                                    : Colors.transparent),
                          )
                        ],
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
