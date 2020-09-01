import 'package:flutter/material.dart';
import 'all_shop.dart';
import 'nearby_shop.dart';
import '../widget/app_drawer.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          title: Text('Shops'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'All shop'),
              Tab(text: 'Nearby Shop'),
            ],
          ),
        ),
        body: TabBarView(children: [AllShop(), NearByShop()]),
      ),
    );
  }
}
