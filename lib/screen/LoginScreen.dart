import 'package:all_map/screen/SignUpScreen.dart';
import 'package:all_map/screen/MainMapScreen.dart';
import 'package:flutter/material.dart';
import 'package:all_map/widget/DrawCircle.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    final myEmail_Controller = TextEditingController();
    final myPassword_Controller = TextEditingController();

    @override
    void dispose() {
      // Clean up the controller when the widget is disposed.
      myEmail_Controller.dispose();
      myPassword_Controller.dispose();
      super.dispose();
    }

    var circleOffsetX_green = (width * 0.4475) * -1;
    var circleOffsetX_yellow = width * 0.25;
    var circleOffsetY_green = height * 0.025;
    var circleOffsetY_yellow = (height * 0.1) * -1;
    //원 사이즈 비율: 84.19
    print(width);
    print(height);
    //색상 변수
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
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
                    height: height * 0.85,
                    child: Column(
                      children: <Widget>[
                        showIconCard(width, height),
                        showPaddingByDIR(0, width, 0.048),
                        showEmailInput(myEmail_Controller),
                        showPaddingByDIR("bottom", width, 0.048),
                        showPwdInput(myPassword_Controller),
                        showPaddingByDIR("bottom", width, 0.120),
                        showSignInBtn(width, height),
                        showPaddingByDIR("bottom", width, 0.072),
                        showForgotPwdInkwell(),
                        showPaddingByDIR("bottom", width, 0.240),
                      ],
                    ),
                  ),
                  showSignUpRow(width, height, 1.0, 0.1145), // 0.1145 | 기기 시연 시 0.120
                ],
              ),
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

  /// showEmailInput
  /// Email을 입력받는 TextField Widget 반환
  /// myEmail_Controller라는 컨트롤러를 Parameter로 넘김
  /// 추후에 myEmail_Controller로 TextField에 입력된 값을 받아올 예정
  Widget showEmailInput(myEmail_Controller){
    return TextField(
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
        isDense: true,
        prefixIcon: new Icon(Icons.text_fields),
        border: OutlineInputBorder(),
        hintText: '비밀번호',
        hintStyle: TextStyle(
          fontSize: 12,
        ),
        fillColor: Color.fromRGBO(228, 255, 223, 1),
      ),
    );
  }

  /// showSignInBtn
  /// "Sign in"이라는 텍스트가 적힌 Button Widget 반환
  Widget showSignInBtn(width, height){
    return ButtonTheme(
      minWidth: width * 1,
      height: height * 0.09,
      child: RaisedButton(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        child: Text(
          'Sign in',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
        color: Color.fromRGBO(89, 197, 71, 1),
        onPressed: () {
          /*넘어갈 페이지 Nasvigator.push() 메서드로 제작*/
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MainMapScreen(
                
              ),
            ),
          );
        },
      ),
    );
  }

  /// showForgotPwdInkwell
  /// "비밀번호를 잊으셨나요?"
  /// 위의 텍스트가 적힌 InkWell Widget 반환
  Widget showForgotPwdInkwell(){
    return InkWell(
      onTap: () {
        /*넘어갈 페이지 Nasvigator.push() 메서드로 제작*/ 
      },
      child: Text(
        '비밀번호를 잊으셨나요?',
        style: TextStyle(
          color: Color.fromRGBO(53, 162, 35, 1),
        ),
      ),
    );
  }

  /// showForgotPwdInkwell
  /// "계정이 없으신가요?(밑줄)지금 만들어보세요"
  /// 위의 텍스트가 적힌 Sign Up Row 반환
  Widget showSignUpRow(width, height, fValue_w, fValue_h){
    return Container(
      width: width * fValue_w,
      height: height * fValue_h,
      color: Color.fromRGBO(255, 255, 0, 0.6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '계정이 없으신가요?'
          ),
          InkWell(
            onTap: () {
              /*넘어갈 페이지 Nasvigator.push() 메서드로 제작*/
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUpScreen(
                    
                  ),
                ),
              );
            },
            child: Text(
              '지금 만들어 보세요',
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

