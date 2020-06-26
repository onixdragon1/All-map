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
                  height: height * 0.2,
                  child: Column(
                    children: <Widget>[
                      Row(
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
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        '',
                        fit: BoxFit.contain,
                        width: width * 0.9,
                        height: width * 0.9,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    showPaddingByDIR("bottom", width, 0.012),
                    Text(
                      '이미지는 최대 370*370 픽셀까지 가능합니다.',
                      style: TextStyle(
                        fontSize: width * 0.015,
                        decoration: TextDecoration.underline,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget showPaddingByDIR(mode, width, floatValue){
    if(mode == "top"){
      return Padding(
        padding: EdgeInsets.only(top: width * floatValue),
      );
    }
    if(mode == "left"){
      return Padding(
        padding: EdgeInsets.only(left: width * floatValue),
      );
    }
    if(mode == "bottom"){
      return Padding(
        padding: EdgeInsets.only(bottom: width * floatValue),
      );
    }
    if(mode == "right"){
      return Padding(
        padding: EdgeInsets.only(right: width * floatValue),
      );
    }
    else {
      return Padding(
        padding: EdgeInsets.all(width * floatValue),
      );
    }
  }

  /// makeBottomNavbarComponent
  /// 하단 Navbar의 구성요소인 4가지
  /// "길 찾기", "주변 상점", "포인트 교환", "설정"
  /// 을 구성하는 위젯을 반환 (각 Component 별로 분리)
  Widget makeBottomNavbarComponent(name, width){
    
    if(name == "가게 종류"){
      return Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset(
            'Images/shop.png',
            fit: BoxFit.cover,
            width: width * 0.09,
            height: width * 0.09,
          ),
          InkWell(
            onTap: () {
              /* 가게 종류 메뉴 클릭 시 이동할 페이지로의 이동 코드 부분 */
            },
            child: Text(
              '가게 종류',
              style: TextStyle(
                fontSize: width * 0.0275,
                backgroundColor: Color.fromRGBO(255, 255, 255, 0.85),
              ),
            ),
          ),
        ],
      );
    }

    if(name == "모자이크"){
      return Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset(
            'Images/mozaic.png',
            fit: BoxFit.cover,
            width: width * 0.09,
            height: width * 0.09,
          ),
          InkWell(
            onTap: () {
              /* 모자이크 메뉴 클릭 시 이동할 페이지로의 이동 코드 부분 */
            },
            child: Text(
              '모자이크',
              style: TextStyle(
                fontSize: width * 0.0275,
                backgroundColor: Color.fromRGBO(255, 255, 255, 0.85),
              ),
            ),
          ),
        ],
      );
    }

    if(name == "가게이름"){
      return Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset(
            'Images/open.png',
            fit: BoxFit.cover,
            width: width * 0.09,
            height: width * 0.09,
          ),
          InkWell(
            onTap: () {
              /* 가게이름 메뉴 클릭 시 이동할 페이지로의 이동 코드 부분 */
            },
            child: Text(
              '가게이름',
              style: TextStyle(
                fontSize: width * 0.0275,
                backgroundColor: Color.fromRGBO(255, 255, 255, 0.85),
              ),
            ),
          ),
        ],
      );
    }
    else return Text("존재하지 않은 컴포넌트입니다!");
  }

  /// showBottomNavbar
  /// makeBottomNavbarComponent의 함수를 사용해
  /// 구성된 하단의 Navbar 반환
  Widget showBottomNavbar(width, height){
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: width * 1.435575),  // 1.4125 | 1.435575 수치값 개발시 알아서 조정
      height: height * 0.1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(14),
          topLeft: Radius.circular(14),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.5),
            blurRadius: 2.0,
            spreadRadius: 1.0,
            offset: Offset(0.0, -2.0), // shadow direction: bottom right
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          makeBottomNavbarComponent("가게 종류", width),
          makeBottomNavbarComponent("모자이크", width),
          makeBottomNavbarComponent("가게이름", width),
        ],
      ),
    );
  }
}