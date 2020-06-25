import 'package:flutter/material.dart';
import 'package:all_map/widget/DrawCircle.dart';

class MainMapScreen extends StatefulWidget {
  @override
  _MainMapScreenState createState() => _MainMapScreenState();
}

class _MainMapScreenState extends State<MainMapScreen> {

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    final mySearch_Controller = TextEditingController();

    @override
    void dispose() {
      // Clean up the controller when the widget is disposed.
      mySearch_Controller.dispose();
      super.dispose();
    }

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: width * 1,
            height: height * 1,
            child: Column(
              children: <Widget>[
                
                Stack(
                  children: <Widget>[
                    /*Google Map이 들어올 자리*/
                    /*Google Map API 받아서 백그라운드로 맵 설정 후 Floating Menu 구현*/
                    Container(
                      decoration: BoxDecoration(color: Colors.redAccent),
                    ),
                    
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(width * 0.018),
                          ),
                          Container(
                            width: width * 0.8,
                            child:TextField(
                              obscureText: true,
                              controller: mySearch_Controller,
                              decoration: InputDecoration(
                                isDense: true,
                                prefixIcon: new Icon(Icons.menu),
                                border: OutlineInputBorder(),
                                hintText: '장소, 상호명 및 주소 검색',
                                hintStyle: TextStyle(
                                  fontSize: 12,
                                ),
                                fillColor: Color.fromRGBO(228, 255, 223, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    /* 하단 NAVIGATION BAR 설정 시작*/
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: width * 1.433),  // 1.4125 | 1.433 수치값 개발시 알아서 조정
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
                          Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Image.asset(
                                'Images/curved_arrow_rotated.png',
                                fit: BoxFit.cover,
                                width: width * 0.1,
                                height: width * 0.1,
                              ),
                              InkWell(
                                onTap: () {
                                  /* 길 찾기 메뉴 클릭 시 이동할 페이지로의 이동 코드 부분 */
                                },
                                child: Text(
                                  '길 찾기',
                                  style: TextStyle(
                                    fontSize: width * 0.03,
                                    backgroundColor: Color.fromRGBO(255, 255, 255, 0.7),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Image.asset(
                                'Images/shop.png',
                                fit: BoxFit.cover,
                                width: width * 0.1,
                                height: width * 0.1,
                              ),
                              InkWell(
                                onTap: () {
                                  /* 주변 상점 메뉴 클릭 시 이동할 페이지로의 이동 코드 부분 */
                                },
                                child: Text(
                                  '주변 상점',
                                  style: TextStyle(
                                    fontSize: width * 0.03,
                                    backgroundColor: Color.fromRGBO(255, 255, 255, 0.7),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Image.asset(
                                'Images/market.png',
                                fit: BoxFit.cover,
                                width: width * 0.1,
                                height: width * 0.1,
                              ),
                              InkWell(
                                onTap: () {
                                  /* 포인트 교환 메뉴 클릭 시 이동할 페이지로의 이동 코드 부분 */
                                },
                                child: Text(
                                  '포인트 교환',
                                  style: TextStyle(
                                    fontSize: width * 0.03,
                                    backgroundColor: Color.fromRGBO(255, 255, 255, 0.7),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Image.asset(
                                'Images/gear.png',
                                fit: BoxFit.cover,
                                width: width * 0.1,
                                height: width * 0.1,
                              ),
                              InkWell(
                                onTap: () {
                                  /* 설정 메뉴 클릭 시 이동할 페이지로의 이동 코드 부분 */
                                },
                                child: Text(
                                  '설정',
                                  style: TextStyle(
                                    fontSize: width * 0.03,
                                    backgroundColor: Color.fromRGBO(255, 255, 255, 0.7),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    /* 하단 NAVIGATION BAR 설정 끝 */
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}