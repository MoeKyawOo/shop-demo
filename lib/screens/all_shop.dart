import 'package:flutter/material.dart';
import '../data/shop_data.dart';
import '../widget/shop_item.dart';
import 'detail_page.dart';

class AllShop extends StatelessWidget {
  static const routeName = '/all_shop';

  @override
  Widget build(BuildContext context) {
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
      },
    );
  }
}
