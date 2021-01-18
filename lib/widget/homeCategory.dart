import 'package:flutter/material.dart';
import 'package:workout_app/style/styling.dart';

class HomeCategory extends StatelessWidget {
  final String categoryName;
  final bool isSelected;
  const HomeCategory({Key key, this.categoryName, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isSelected ? 28 : null,
      width: isSelected ? 92 : null,
      decoration: isSelected
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(PadRadius.radius),
              border: Border.all(color: AppColor.pColor))
          : null,
      child: Center(
        child: Text(
          categoryName,
          style: AppTextStyle.body12,
        ),
      ),
    );
  }
}
