import 'package:flutter/material.dart';

class BestProductWidget extends StatefulWidget {
  @override
  _BestProductWidgetState createState() => _BestProductWidgetState();
}

class _BestProductWidgetState extends State<BestProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          BestProductTitle(),
          Expanded(
            child: BestFoodList(),
          )
        ],
      ),
    );
  }
}

class BestProductTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Top Local Vendors",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}

class BestProductTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String rating;
  String numberOfRating;
  String location;
  String slug;

  BestProductTiles(
      {Key key,
        @required this.name,
        @required this.imageUrl,
        @required this.rating,
        @required this.numberOfRating,
        @required this.location,
        @required this.slug})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            decoration: BoxDecoration(boxShadow: [
              /* BoxShadow(
                color: Color(0xFFfae3e2),
                blurRadius: 15.0,
                offset: Offset(0, 0.75),
              ),*/
            ]),
            child: Container(
              height: 200,
              width: double.infinity,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  'assets/images/ShopPics/' + imageUrl + ".jpg",
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 1,
                margin: EdgeInsets.all(5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BestFoodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        BestProductTiles(
            name: "Raveena Super Mart",
            imageUrl: "Gog1",
            rating: '4.9',
            numberOfRating: '200',
            location: 'Goa',
            slug: "fried_egg"),
        BestProductTiles(
            name: "Raveena Super Mart",
            imageUrl: "Gro2",
            rating: "4.9",
            numberOfRating: "100",
            location: "Goa",
            slug: ""),
        BestProductTiles(
            name: "Raveena Super Mart",
            imageUrl: "Gro3",
            rating: "4.0",
            numberOfRating: "50",
            location: "Goa",
            slug: ""),
        BestProductTiles(
            name: "Raveena Super Mart",
            imageUrl: "Gro5",
            rating: "4.00",
            numberOfRating: "100",
            location: "Goa",
            slug: ""),
        BestProductTiles(
            name: "Raveena Super Mart",
            imageUrl: "Gro1",
            rating: "4.6",
            numberOfRating: "150",
            location: "Goa",
            slug: ""),
        BestProductTiles(
            name: "Raveena Super Mart",
            imageUrl: "Gro2",
            rating: "4.00",
            numberOfRating: "100",
            location: "Goa",
            slug: ""),
        BestProductTiles(
            name: "Raveena Super Mart",
            imageUrl: "Gro3",
            rating: "4.2",
            numberOfRating: "70",
            location: "Goa",
            slug: ""),


      ],
    );
  }
}
