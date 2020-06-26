import 'package:all_map/screen/LoginScreen.dart';
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
                      showPaddingByDIR(0, width, 0.036),
                      showIconCard(width, height),
                      showPaddingByDIR(0, width, 0.060),
                      showNickInput(myNickname_Controller),
                      showPaddingByDIR("bottom", width, 0.072),
                      showEmailInput(myEmail_Controller),
                      showPaddingByDIR("bottom", width, 0.072),
                      showPwdInput(myPassword_Controller),
                      showPaddingByDIR("bottom", width, 0.144),
                      showSignUpBtn(width, height),
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
  /// showIconCard
  /// width와 height로 사이즈가 조절된 Image Widget이 담긴
  /// Card 위젯 반환
  Widget showIconCard(width, height){
    return Card(
      elevation: 10,
      child: Image.asset(
        'Images/Allmap_Icon.png',
        fit: BoxFit.cover,
        width: width * 0.311,
        height: width * 0.311,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      margin: EdgeInsets.all(5),
      color: Color.fromRGBO(190, 202, 190, 0.9),
    );
  }

  /// showPaddingByDIR
  /// mode 변수의 값에 따라 어느 방향으로 패딩을 줄지 결정
  /// mode 지정값: "top", "left", "bottom", "right"
  /// mode의 지정값 별 그 위치에 width * floatValue로 계산된 Padding 반환
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

  /// showNickInput
  /// Nickname을 입력받는 TextField Widget 반환
  /// myNickname_Controller라는 컨트롤러를 Parameter로 넘김
  /// 추후에 myNickname_Controller로 TextField에 입력된 값을 받아올 예정
  Widget showNickInput(myNickname_Controller){
    return TextField(
      controller: myNickname_Controller,
      decoration: InputDecoration(
        filled: true,
        prefixIcon: new Icon(Icons.text_fields),
        border: InputBorder.none,
        hintText: '닉네임',
        hintStyle: TextStyle(
          fontSize: 12,
        ),
        fillColor: Color.fromRGBO(239, 239, 239, 1),
      ),
    );
  }

  /// showEmailInput
  /// Email을 입력받는 TextField Widget 반환
  /// myEmail_Controller라는 컨트롤러를 Parameter로 넘김
  /// 추후에 myEmail_Controller로 TextField에 입력된 값을 받아올 예정
  Widget showEmailInput(myEmail_Controller){
    return TextField(
      obscureText: true,
      controller: myEmail_Controller,
      decoration: InputDecoration(
        filled: true,
        prefixIcon: new Icon(Icons.text_fields),
        border: InputBorder.none,
        hintText: '이메일',
        hintStyle: TextStyle(
          fontSize: 12,
        ),
        fillColor: Color.fromRGBO(239, 239, 239, 1),
      ),
    );
  }

  /// showPwdInput
  /// Password를 입력받는 TextField Widget 반환
  /// myPassword_Controller 컨트롤러를 Parameter로 넘김
  /// 추후에 myPassword_Controller로 TextField에 입력된 값을 받아올 예정
  Widget showPwdInput(myPassword_Controller){
    return TextField(
      obscureText: true,
      controller: myPassword_Controller,
      decoration: InputDecoration(
        filled: true,
        prefixIcon: new Icon(Icons.text_fields),
        border: InputBorder.none,
        hintText: '비밀번호',
        hintStyle: TextStyle(
          fontSize: 12,
        ),
        fillColor: Color.fromRGBO(239, 239, 239, 1),
      ),
    );
  }
  
  /// showSignInBtn
  /// "Sign in"이라는 텍스트가 적힌 Button Widget 반환
  Widget showSignUpBtn(width, height){
    return ButtonTheme(
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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(
                
              ),
            ),
          );
        },
      ),
    );
  }
}