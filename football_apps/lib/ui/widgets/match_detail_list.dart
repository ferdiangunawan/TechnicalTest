part of 'widget.dart';

class MatchDetailList extends StatelessWidget {
  final ByMatch? byMatch;
  MatchDetailList(this.byMatch);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 200,
        width: 250,
        color: Colors.orangeAccent.withBlue(40),
        child: Column(
          children: [
            Image.network(
              byMatch!.image!,
              fit: BoxFit.cover,
              height: 120,
              width: 250,
            ),
            SizedBox(height: 10),
            Text(
              byMatch!.eventName!,
              style: blackFontStyle.copyWith(fontSize: 14),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              byMatch!.dateEvent!,
              style: blackFontStyle.copyWith(fontSize: 14),
            ),
            Text(
              byMatch!.timeEvent!.substring(0, 5) + ' WIB',
              style: blackFontStyle.copyWith(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
