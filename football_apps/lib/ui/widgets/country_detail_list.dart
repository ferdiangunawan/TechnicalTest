part of 'widget.dart';

class CountryList extends StatelessWidget {
  final ByCountry? byCountry;
  CountryList(this.byCountry);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: edge),
      width: 400,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Row(
        children: [
          Image.network(
            byCountry!.image!,
            width: 60,
            height: 60,
            fit: BoxFit.contain,
          ),
          SizedBox(
            width: 200,
            child: Text(
              byCountry!.name!,
              style: blackFontStyle,
              // maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
