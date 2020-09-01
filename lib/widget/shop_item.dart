import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/shop_data_model.dart';

class ShopItem extends StatelessWidget {
  final ShopDataModel detail;
  final Function onTab;
  ShopItem({this.detail, this.onTab});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              detail.title,
              style: Theme.of(context).textTheme.headline6,
            ),
            IconButton(
              icon: Icon(
                Icons.location_on,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {},
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                detail.address,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: onTab,
            )
          ],
        ),
        Text(
          detail.distance,
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
        Divider(),
      ],
    );
  }
}
