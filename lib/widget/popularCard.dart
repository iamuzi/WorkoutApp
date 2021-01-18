import 'package:flutter/material.dart';
import 'package:workout_app/style/styling.dart';

class PopularCard extends StatelessWidget {
  final String asset;
  final String title;
  const PopularCard({Key key, this.asset, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0, bottom: 10.0),
          child: Container(
              // height: 172,
              // width: 142,
              child: Image.asset('assets/images/$asset.png')),
        ),
        //SizedBox(height: 10),
        Text(
          title,
          style: AppTextStyle.body12,
        )
      ],
    );
  }
}
