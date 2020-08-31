import 'package:flutter/material.dart';
import 'package:all_map/values/values.dart';

class ButtonsItemWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: 157),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(left: 24),
            decoration: BoxDecoration(
              color: AppColors.primaryBackground,
              boxShadow: [
                Shadows.primaryShadow,
              ],
              borderRadius: Radii.k20pxRadius,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 23),
                  child: Text(
                    "내 정보",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Apple SD Gothic Neo",
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(right: 23),
            decoration: BoxDecoration(
              color: AppColors.primaryBackground,
              boxShadow: [
                Shadows.primaryShadow,
              ],
              borderRadius: Radii.k20pxRadius,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15, top: 46),
                  child: Text(
                    "비밀번호\n변경",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Apple SD Gothic Neo",
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
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