import 'package:flutter/material.dart';

class DetailItem extends StatelessWidget {
  final String data;
  DetailItem({this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.stop),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(data),
            )),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        SizedBox(height: 10)
      ],
    );
  }
}
