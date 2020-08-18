import 'package:flutter/material.dart';
import 'package:ingro/animation/ScaleRoute.dart';
import 'package:ingro/pages/SignInPage.dart';
import 'package:ingro/widgets/BestProductWidget.dart';
import 'package:ingro/widgets/BottomNavBarWidget.dart';
import 'package:ingro/widgets/PopularProdutsWidget.dart';
import 'package:ingro/widgets/SearchWidget.dart';
import 'package:ingro/widgets/CatTopMenus.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        title: Text(
          "What would you like to Order?",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Color(0xFF3a3737),
              ),
              onPressed: () {Navigator.push(context, ScaleRoute(page: SignInPage()));})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchWidget(),
            TopMenus(),
            PopularProductsWidget(),
            BestProductWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
