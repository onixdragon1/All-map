import 'package:flutter/material.dart';
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

    //원 사이즈 비율: 84.19
    print(width);
    print(height);
    //색상 변수
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _buildSettingGrid(width, height),
        ),
      ),
    );
  }

  Widget _buildSettingGrid(width, height){
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 0,
            top: 74,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.ternaryBackground,
              ),
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) => ButtonsItemWidget(),
              ),
            ),
          ),
          Positioned(
            left: -32,
            top: -19,
            right: 0,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Positioned(
                  top: 19,
                  right: 0,
                  child: Container(
                    width: 375,
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColors.primaryElement,
                      boxShadow: [
                        Shadows.secondaryShadow,
                      ],
                    ),
                    child: Container(),
                  ),
                ),
                Positioned(
                  left: 0,
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
                          width: 63,
                          height: 63,
                          child: Image.asset(
                            "Images/back.png",
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
        ],
      ),
    );
  }
}