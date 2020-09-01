import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Shop App'),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            title: Text('All Shop'),
            leading: Icon(Icons.home),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.near_me),
            title: Text('Nearby Shop'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
        ],
      ),
    );
  }
}
