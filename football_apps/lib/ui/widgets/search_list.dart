part of 'widget.dart';

class SearchListCard extends StatelessWidget {
  final Search? search;
  SearchListCard(this.search);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        color: Colors.grey.withAlpha(50),
        child: Column(
          children: [
            Image.network(search!.image!, height: 90, fit: BoxFit.contain),
            Text(search!.nameCLub!, style: blackFontStyle),
            Text(search!.league!, style: blackFontStyle.copyWith(fontSize: 16)),
            Text(search!.stadium!),
            SizedBox(height: 8),
            Text(search!.description!,
                maxLines: 5, overflow: TextOverflow.ellipsis)
          ],
        ),
      ),
    );
  }
}
