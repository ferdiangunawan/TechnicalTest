part of 'widget.dart';

class CountryCard extends StatelessWidget {
  final Function? onTap;
  final String? name;
  final String? image;
  CountryCard({this.onTap, this.name, this.image});
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
            Colors.redAccent.withOpacity(0.5),
            Colors.blueAccent.withOpacity(0.5)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(image!, width: 30, fit: BoxFit.contain),
            SizedBox(width: 16),
            Text(name!,
                style: blackFontStyle.copyWith(fontSize: 14), maxLines: 2)
          ],
        ),
      ),
    );
  }
}
