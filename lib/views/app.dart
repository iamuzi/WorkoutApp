import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workout_app/style/styling.dart';
import 'package:workout_app/views/home.dart';
import 'package:workout_app/views/workout.dart';

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  PageController _myPage = PageController(initialPage: 0);
  int selected = 0;

  @override
  void initState() {
    super.initState();
    _myPage = PageController();
  }

  @override
  void dispose() {
    _myPage.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _myPage,
        onPageChanged: (index) {
          // print('Page changes to index $int');
          setState(() => selected = index);
        },
        children: [
          Home(),
          Workout(),
          const Center(
              child: Icon(Icons.grade, size: 64.0, color: Colors.blue)),
          const Center(
              child: Icon(Icons.person, size: 64.0, color: Colors.teal)),
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColor.sColor,
        child: _buildBottomBar(),
      ),
    );
  }

  Padding _buildBottomBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: PadRadius.horizontal - 10),
      child: Container(
        height: 70,
        width: double.infinity,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            bottomBarIcon(asset: 'menu', index: 0),
            bottomBarItems(index: 1, title: 'Workout'),
            bottomBarItems(index: 2, title: 'Level'),
            bottomBarItems(index: 3, title: 'Profile'),
          ],
        ),
      ),
    );
  }

  GestureDetector bottomBarIcon({String asset, int index}) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _myPage.jumpToPage(index);
          });
        },
        child: SvgPicture.asset('assets/icons/$asset.svg',
            height: 25,
            width: 25,
            color: selected == index ? AppColor.pColor : Colors.grey));
  }

  GestureDetector bottomBarItems({int index, String title}) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _myPage.jumpToPage(index);
          });
        },
        child: Container(
            height: 50,
            width: 80,
            color: AppColor.sColor,
            child: Center(
                child: Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  color: selected == index ? AppColor.pColor : Colors.grey),
            ))));
  }
}
