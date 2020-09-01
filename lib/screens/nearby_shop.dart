import 'package:flutter/material.dart';
import '../data/shop_data.dart';
import '../widget/shop_item.dart';
import '../screens/detail_page.dart';

class NearByShop extends StatelessWidget {
  static const routeName = '/near_by_shop';

  @override
  Widget build(BuildContext context) {
    print('buildede');
    return ListView.builder(
        itemCount: allShop.length,
        itemBuilder: (context, index) {
          return ShopItem(
            detail: allShop[index],
            onTab: () {
              Navigator.of(context)
                  .pushNamed(DetailPage.routeName, arguments: index);
            },
          );
        });
  }
}
