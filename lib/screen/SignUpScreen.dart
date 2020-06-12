import 'package:flutter/material.dart';
import 'package:all_map/widget/DrawCircle.dart';

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
                CustomPaint(painter: DrawCircle(Color.fromRGBO(14, 198, 11, 0.4), circleOffsetX_green, circleOffsetY_green, width * 0.4166666666666667)),
                CustomPaint(painter: DrawCircle(Color.fromRGBO(243, 245, 126, 0.6), circleOffsetX_yellow, circleOffsetY_yellow, width * 0.4166666666666667+10)),
                Container(
                  width: width * 0.8,
                  height: height * 0.95,
                  child: Column(
                    children: <Widget>[
                      Card(
                        child: Image.asset(
                          'Images/bgImage.jpg',
                          fit: BoxFit.cover,
                          width: width * 0.35556,
                          height: width * 0.35556,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                          side: BorderSide(
                            color: Color.fromRGBO(190, 202, 190, 1),
                            width: 1,
                          ),
                        ),
                        margin: EdgeInsets.all(5),
                        color: Color.fromRGBO(190, 202, 190, 0.9),
                      ),
                      Padding(
                        padding: EdgeInsets.all(width * 0.048),
                      ),
                      TextField(
                        controller: myNickname_Controller,
                        decoration: InputDecoration(
                          isDense: true,
                          prefixIcon: new Icon(Icons.text_fields),
                          border: OutlineInputBorder(),
                          hintText: '닉네임',
                          hintStyle: TextStyle(
                            fontSize: 12,
                          ),
                          fillColor: Color.fromRGBO(228, 255, 223, 1),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: width * 0.072),
                      ),
                      TextField(
                        obscureText: true,
                        controller: myEmail_Controller,
                        decoration: InputDecoration(
                          isDense: true,
                          prefixIcon: new Icon(Icons.text_fields),
                          border: OutlineInputBorder(),
                          hintText: '이메일',
                          hintStyle: TextStyle(
                            fontSize: 12,
                          ),
                          fillColor: Color.fromRGBO(228, 255, 223, 1),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: width * 0.072),
                      ),
                      TextField(
                        obscureText: true,
                        controller: myPassword_Controller,
                        decoration: InputDecoration(
                          isDense: true,
                          prefixIcon: new Icon(Icons.text_fields),
                          border: OutlineInputBorder(),
                          hintText: '비밀번호',
                          hintStyle: TextStyle(
                            fontSize: 12,
                          ),
                          fillColor: Color.fromRGBO(228, 255, 223, 1),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: width * 0.120),
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
                            'Sign Up',
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