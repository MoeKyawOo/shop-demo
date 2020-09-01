import 'package:flutter/material.dart';
import 'screens/tabs_screen.dart';
import 'screens/all_shop.dart';
import 'screens/nearby_shop.dart';
import 'screens/detail_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabsScreen(),
      routes: {
        AllShop.routeName: (context) => AllShop(),
        NearByShop.routeName: (context) => NearByShop(),
        DetailPage.routeName: (context) => DetailPage()
      },
    );
  }
}
