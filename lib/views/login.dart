import 'package:flutter/material.dart';
import 'package:workout_app/style/styling.dart';
import 'package:workout_app/style/text.dart';
import 'package:workout_app/views/about.dart';
import 'package:workout_app/widget/bodyText.dart';
import 'package:workout_app/widget/button.dart';
import 'package:workout_app/widget/header.dart';

class Login extends StatelessWidget {
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
                      'assets/images/login.png',
                      fit: BoxFit.fill,
                    )),
                Image.asset(
                  'assets/images/Rectangle.png',
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: SafeArea(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: PadRadius.horizontal - 15),
                      child: Column(
                        children: [
                          Expanded(flex: 5, child: Header()),
                          Expanded(
                            flex: 5,
                            child: BodyText(
                              bodyTxt: ltitle,
                              isBold: true,
                              desc: wbody,
                            ),
                          ),
                          Expanded(
                              flex: 6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  _textField(labelText: lbody1),
                                  SizedBox(height: 10),
                                  _textField(labelText: lbody2, obscure: true),
                                  SizedBox(height: 30),
                                  Text(lbody3)
                                ],
                              )),
                          Expanded(
                            flex: 5,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Button(
                                  border: false,
                                  btnTxt: lbody4,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Button(
                                  border: true,
                                  btnTxt: lbody5,
                                  borderColor: AppColor.pColor,
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => About())),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextField _textField({String labelText, bool obscure = false}) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: labelText),
    );
  }
}
