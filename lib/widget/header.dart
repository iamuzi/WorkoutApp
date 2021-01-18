import 'package:flutter/material.dart';
import 'package:workout_app/style/styling.dart';
import 'package:workout_app/style/text.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        //color: Colors.blue,
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height * 0.45,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: PadRadius.vertical),
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                text: wheader,
                style: AppTextStyle.headline32,
              ),
              TextSpan(
                text: wheader2,
                style: AppTextStyle.headline32.copyWith(color: AppColor.pColor),
              ),
            ]),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
