import 'package:flutter/material.dart';
import 'package:all_map/widget/DrawCircle.dart';
import 'package:all_map/widget/ButtonsItemWidget.dart';
import 'package:all_map/values/values.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  var SettingList = ["내 정보", "비밀번호 변경", "공지사항", "패치노트", "고객센터", "1대1 문의"];

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

    var circleOffsetX_green = (width * 0.425) * -1;
    var circleOffsetX_darkGreen = (width * 0) * -1;
    var circleOffsetY_green = (height * 0.015) * -1;
    var circleOffsetY_darkGreen = (height * 0.1) * -1;
    //원 사이즈 비율: 84.19
    print(width);
    print(height);
    //색상 변수
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              CustomPaint(painter: DrawCircle(Color.fromRGBO(14, 198, 11, 0.4), circleOffsetX_green, circleOffsetY_green, width * 0.1276)),
              CustomPaint(painter: DrawCircle(Color.fromRGBO(63, 210, 60, 0.9), circleOffsetX_darkGreen, circleOffsetY_darkGreen, width * 0.3666666666+15)),
              Padding(
                padding: EdgeInsets.only(bottom: width * 0.036),
              ),
              Image.asset(
                'Images/settings.png',
                width: width * 0.15,
                height: width * 0.15,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: width * 0.060),
              ),
              _buildSettingGrid(width, height),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingGrid(width, height){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: 374,
            height: 329,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Positioned(
                  right: 0,
                  child: Container(
                    width: 329,
                    height: 329,
                    decoration: BoxDecoration(
                      color: AppColors.ternaryBackground,
                      borderRadius: BorderRadius.all(Radius.circular(164.5)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 65,
                          height: 65,
                          margin: EdgeInsets.only(bottom: 25),
                          child: Image.asset(
                            "assets/images/-1.png",
                            fit: BoxFit.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 2,
                  child: Container(
                    width: 118,
                    height: 118,
                    decoration: BoxDecoration(
                      color: AppColors.secondaryBackground,
                      borderRadius: BorderRadius.all(Radius.circular(59)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 52,
                          height: 52,
                          child: Image.asset(
                            "assets/images/-2.png",
                            fit: BoxFit.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.only(top: 21),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) => ButtonsItemWidget(),
            ),
          ),
        ),
      ],
    );
  }
}