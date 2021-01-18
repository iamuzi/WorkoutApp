import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workout_app/style/styling.dart';
import 'package:workout_app/style/text.dart';
import 'package:workout_app/widget/homeCategory.dart';
import 'package:workout_app/widget/popularCard.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Image.asset(
                      'assets/images/ht.png',
                      fit: BoxFit.fill,
                    )),
                SizedBox(
                  // width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: SvgPicture.asset(
                    'assets/icons/background.svg',
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: SafeArea(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: PadRadius.horizontal - 15,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: htxt1,
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: AppColor.pColor,
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text: htxt2,
                                            style: TextStyle(fontSize: 25))
                                      ]),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: AppColor.pColor,
                                              width: 3)),
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/circle.png'),
                                      ),
                                    )
                                  ],
                                ),
                                Spacer(),
                                SvgPicture.asset('assets/icons/play.svg'),
                                Spacer(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: hbody1,
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: AppColor.pColor,
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                          text: hbody2,
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ]),
                                    ),
                                    Icon(Icons.filter_alt_outlined)
                                  ],
                                ),
                                SizedBox(height: 25),
                                Container(
                                  height: 50,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: AppColor.sColor,
                                      borderRadius: BorderRadius.circular(
                                          PadRadius.radius)),
                                  child: Center(
                                      child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: PadRadius.horizontal),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          hbody3,
                                          style: AppTextStyle.body10,
                                        ),
                                        Icon(
                                          Icons.search,
                                          size: 20,
                                        )
                                      ],
                                    ),
                                  )),
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        )),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        //height: MediaQuery.of(context).size.height * 0.4,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: PadRadius.horizontal - 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                //color: Colors.red,
                                height: 70,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    HomeCategory(
                                      categoryName: hcat1,
                                      isSelected: true,
                                    ),
                                    HomeCategory(
                                      categoryName: hcat2,
                                    ),
                                    HomeCategory(
                                      categoryName: hcat3,
                                    ),
                                    HomeCategory(
                                      categoryName: hcat4,
                                    ),
                                  ],
                                ),
                              ),
                              Text(htitle, style: AppTextStyle.title30),
                              SizedBox(height: 20),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                child: Row(
                                  children: [
                                    PopularCard(
                                      asset: "ht1",
                                      title: htitlecat1,
                                    ),
                                    PopularCard(
                                      asset: "ht2",
                                      title: htitlecat2,
                                    ),
                                    PopularCard(
                                      asset: "ht3",
                                      title: htitlecat3,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(htitle2, style: AppTextStyle.title30),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
