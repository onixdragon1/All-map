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
                      width: width * 0.8,
                      height: height * 0.95,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(width * 0.012),
                          ),
                          
                          TextField(
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
                          /*하단 Floating Menu 들어올 자리*/
                        ],
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
}