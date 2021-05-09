part of 'widget.dart';

class MatchCard extends StatelessWidget {
  final Function? onTap;
  final String? name;
  final String? image;
  MatchCard({this.onTap, this.name, this.image});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: edge, vertical: 3),
        margin: EdgeInsets.symmetric(horizontal: edge),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(colors: [
            Colors.amberAccent.withOpacity(0.5),
            Colors.blueGrey.withOpacity(0.5)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Row(
          children: [
            Image.asset(image!, width: 30, fit: BoxFit.contain),
            SizedBox(width: 16),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Text(name!,
                  style: blackFontStyle.copyWith(fontSize: 14),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis),
            )
          ],
        ),
      ),
    );
  }
}
