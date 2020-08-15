import 'package:all_map/screen/PicCheckScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:all_map/widget/DrawCircle.dart';


class MainMapScreen extends StatefulWidget {
  @override
  _MainMapScreenState createState() => _MainMapScreenState();
}

class _MainMapScreenState extends State<MainMapScreen> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _gsmPosition = CameraPosition(
    target: LatLng(35.143086, 126.800360),
    zoom: 11.0,
  );

  void _onMapCreated(GoogleMapController controller){
    _controller.complete(controller);
  }

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
                    /* Background에 들어갈 Google Map 설정 시작 */
                    /*Google Map API 받아서 백그라운드로 맵 설정 후 Floating Menu 구현*/
                    showGoogleMap(width, height),
                    /* Background에 들어갈 Google Map 설정 끝 */

                    /* 상단 Search 영역 설정 시작*/
                    showSearchInput(width, height, mySearch_Controller),
                    /* 상단 Search 영역 설정 끝 */

                    /* 하단 NAVIGATION BAR 설정 시작*/
                    showBottomNavbar(width, height),
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
  /// showGoogleMap
  /// GoogleMap의 API Key를 받아 pubspec.yaml 파일에 적용 후
  /// 제일 뒤인 배경에 GoogleMap을 올릴 예정(현재는 색만 배치)
  Widget showGoogleMap(width, height){
    return Container(
      width : width * 1,
      height : height * 0.9645,
      child: GoogleMap(
        initialCameraPosition: _gsmPosition,
        onMapCreated: _onMapCreated,
      ),
    );
  }

  /// showSearchInput
  /// 장소, 상호명 또는 주소를 입력받는 TextField Widget 반환
  /// mySearch_Controller 컨트롤러를 Parameter로 넘김
  /// 추후에 mySearch_Controller TextField에 입력된 값을 받아올 예정
  Widget showSearchInput(width, height, mySearch_Controller){
    return Container(
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
                filled: true,
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
    );
  }

  /// makeBottomNavbarComponent
  /// 하단 Navbar의 구성요소인 4가지
  /// "길 찾기", "주변 상점", "포인트 교환", "설정"
  /// 을 구성하는 위젯을 반환 (각 Component 별로 분리)
  Widget makeBottomNavbarComponent(name, width){
    
    if(name == "길 찾기"){
      return Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset(
            'Images/upload.png',
            fit: BoxFit.cover,
            width: width * 0.09,
            height: width * 0.09,
          ),
          InkWell(
            onTap: () {
              /* 길 찾기 메뉴 클릭 시 이동할 페이지로의 이동 코드 부분 */
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PicCheckScreen(
                    
                  ),
                ),
              );
            },
            child: Text(
              '길 찾기',
              style: TextStyle(
                fontSize: width * 0.0275,
                backgroundColor: Color.fromRGBO(255, 255, 255, 0.85),
              ),
            ),
          ),
        ],
      );
    }

    if(name == "주변 상점"){
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
              /* 주변 상점 메뉴 클릭 시 이동할 페이지로의 이동 코드 부분 */
            },
            child: Text(
              '주변 상점',
              style: TextStyle(
                fontSize: width * 0.0275,
                backgroundColor: Color.fromRGBO(255, 255, 255, 0.85),
              ),
            ),
          ),
        ],
      );
    }

    if(name == "포인트 교환"){
      return Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset(
            'Images/shop_package.png',
            fit: BoxFit.cover,
            width: width * 0.09,
            height: width * 0.09,
          ),
          InkWell(
            onTap: () {
              /* 포인트 교환 메뉴 클릭 시 이동할 페이지로의 이동 코드 부분 */
            },
            child: Text(
              '포인트 교환',
              style: TextStyle(
                fontSize: width * 0.0275,
                backgroundColor: Color.fromRGBO(255, 255, 255, 0.85),
              ),
            ),
          ),
        ],
      );
    }

    if(name == "설정"){
      return Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset(
            'Images/settings.png',
            fit: BoxFit.cover,
            width: width * 0.09,
            height: width * 0.09,
          ),
          InkWell(
            onTap: () {
              /* 설정 메뉴 클릭 시 이동할 페이지로의 이동 코드 부분 */
            },
            child: Text(
              '설정',
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
          makeBottomNavbarComponent("길 찾기", width),
          makeBottomNavbarComponent("주변 상점", width),
          makeBottomNavbarComponent("포인트 교환", width),
          makeBottomNavbarComponent("설정", width),
        ],
      ),
    );
  }
}