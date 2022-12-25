import 'package:excelapp/UI/Screens/HomePage/Widgets/Discover/discover.dart';
import 'package:excelapp/UI/Screens/HomePage/Widgets/Highlights/highlights.dart';
import 'package:excelapp/UI/Screens/HomePage/Widgets/home_appBar.dart';
import 'package:flutter/material.dart';
import 'package:excelapp/UI/Screens/HomePage/Widgets/Categories/categories.dart';
import 'package:excelapp/UI/Screens/HomePage/Widgets/socialIcons.dart';
import 'package:excelapp/UI/Screens/HomePage/Widgets/QuickAccess/quickAccess.dart';
import 'package:excelapp/UI/Screens/HomePage/Widgets/Stories/stories.dart';
import 'package:excelapp/UI/Screens/HomePage/Widgets/Drawer/drawer.dart';
import 'package:excelapp/UI/Screens/HomePage/Widgets/Drawer/drawer.dart';

import 'package:excelapp/UI/Screens/HomePage/Widgets/LatestNews/latestNews.dart';

class HomePage extends StatefulWidget {
  Null Function(int,String) navToExplore;
  HomePage({this.navToExplore});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe4edef),
      // appBar: homeAppBar(context),
      // drawer: CustomDrawer(),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              // Stories(),
              Container(
                padding: EdgeInsets.all(0),
                color: Colors.white,
                child: Column(
                  children: [
                    ExcelTitle(),
                    QuickAccessBar(),
                    HighlightsSection(),
                  ],
                ),
              ),

              Discover(navToExplore: widget.navToExplore),
              LatestNewsSection(),
              // Categories(),
              // SocialIcons(),
            ],
          ),
        ),
      ),
    );
  }
}
