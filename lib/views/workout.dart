import 'package:flutter/material.dart';
import 'package:workout_app/style/styling.dart';
import 'package:workout_app/style/text.dart';
import 'package:workout_app/widget/button.dart';

class Workout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Image.asset(
                    'assets/images/details.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Image.asset(
                  'assets/images/Rectangle.png',
                  fit: BoxFit.fill,
                ),
                body(context)
              ],
            ),
          ],
        ),
      ),
    );
  }

  SizedBox body(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: PadRadius.horizontal - 20),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 30,
                      width: 114,
                      decoration: BoxDecoration(
                          color: AppColor.pColor,
                          borderRadius:
                              BorderRadius.circular(PadRadius.radius)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.alarm,
                            size: 15,
                          ),
                          Text(
                            dbody1,
                            style: AppTextStyle.body12,
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      iconSize: 30,
                      icon: Icon(
                        Icons.cancel,
                        color: Colors.white,
                      ),
                      onPressed: null,
                    )
                  ],
                ),
              ),
              // SizedBox(height: 50),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            // mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RichTextWidget(number: dbody2, text: dbody2i),
                              RichTextWidget(number: dbody3, text: dbody3i),
                              RichTextWidget(number: dbody4, text: dbody4i)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 3,
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(dtitle, style: AppTextStyle.title30),
                              SizedBox(height: 10),
                              Row(
                                children: List.generate(
                                  5,
                                  (index) => Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(
                                      Icons.star,
                                      size: 15,
                                      color: (index == 3) || (index == 4)
                                          ? AppColor.sColor
                                          : Colors.yellow,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 4,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  dcat1,
                                  style: AppTextStyle.body20,
                                ),
                                Text(
                                  dcat2,
                                  style: AppTextStyle.body20
                                      .copyWith(color: Colors.white30),
                                ),
                                Text(
                                  dcat3,
                                  style: AppTextStyle.body20
                                      .copyWith(color: Colors.white30),
                                )
                              ],
                            ),
                            SizedBox(height: 30),
                            Text(descr, style: AppTextStyle.body10)
                          ],
                        ))
                  ],
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Button(
                        border: false,
                        btnTxt: dbutn1,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Button(
                        border: true,
                        btnTxt: dbutn2,
                        borderColor: AppColor.pColor,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class RichTextWidget extends StatelessWidget {
  final String number;
  final String text;
  const RichTextWidget({Key key, this.number, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: number,
            style: AppTextStyle.body16.copyWith(color: AppColor.pColor)),
        TextSpan(text: text, style: AppTextStyle.body16),
      ]),
    );
  }
}
