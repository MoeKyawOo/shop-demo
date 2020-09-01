import 'package:flutter/material.dart';
import '../models/shop_data_model.dart';
import '../data/shop_data.dart';
import '../widget/detail_item.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/detail_page';

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context).settings.arguments as int;
    ShopDataModel detail = allShop[index];
    String imgURL =
        'https://www.girlscoutshh.org/content/dam/girlscouts-girlscoutshh/images/Internal/Shop.jpg.transform/cq5dam.web.1280.1280/img.jpg';
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            child: Image.network(
              imgURL,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DetailItem(data: detail.title),
                DetailItem(data: detail.address),
                DetailItem(data: detail.phoneNumber),
                DetailItem(data: detail.location),
              ],
            ),
          )
        ],
      ),
    );
  }
}
