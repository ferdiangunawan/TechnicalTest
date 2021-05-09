part of 'widget.dart';

class BottomCustomNavBar extends StatelessWidget {
  final Function(int index)? onTap;
  final int? selectedIndex;

  BottomCustomNavBar({this.selectedIndex = 0, this.onTap});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: 60,
        color: Colors.black.withOpacity(0.7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                onTap!(0);
              },
              child: Icon(Icons.home,
                  size: 32,
                  color:
                      selectedIndex == 0 ? Colors.redAccent[700] : Colors.grey),
            ),
            GestureDetector(
              onTap: () {
                onTap!(1);
              },
              child: Icon(Icons.search,
                  size: 32,
                  color:
                      selectedIndex == 1 ? Colors.redAccent[700] : Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
