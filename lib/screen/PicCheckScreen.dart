import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    final myNickname_Controller = TextEditingController();
    final myEmail_Controller = TextEditingController();
    final myPassword_Controller = TextEditingController();

    @override
    void dispose() {
      // Clean up the controller when the widget is disposed.
      myEmail_Controller.dispose();
      myPassword_Controller.dispose();
      myNickname_Controller.dispose();
      super.dispose();
    }

    var circleOffsetX_green = (width * 0.4475) * -1;
    var circleOffsetX_yellow = width * 0.25;
    var circleOffsetY_green = height * 0.025;
    var circleOffsetY_yellow = (height * 0.1) * -1;

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: width * 1,
            height: height * 1,
            child: Column(
              children: <Widget>[
                Container(
                  width: width * 0.8,
                  height: height * 0.95,
                  child: Column(
                    children: <Widget>[
                      ButtonTheme(
                        minWidth: width * 1,
                        height: height * 0.09,
                        child: RaisedButton(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                          child: Text(
                            '다시 촬영',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          color: Color.fromRGBO(255, 245, 0, 1),
                          onPressed: () {
                            /*넘어갈 페이지 Nasvigator.push() 메서드로 제작*/ 
                          },
                        ),
                      ),
                      ButtonTheme(
                        minWidth: width * 1,
                        height: height * 0.09,
                        child: RaisedButton(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                          child: Text(
                            '그대로 진행',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          color: Color.fromRGBO(255, 245, 0, 1),
                          onPressed: () {
                            /*넘어갈 페이지 Nasvigator.push() 메서드로 제작*/ 
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}