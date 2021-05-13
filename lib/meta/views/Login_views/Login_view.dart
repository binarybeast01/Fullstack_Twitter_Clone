import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:twitterclone/meta/views/Login_views/Login_view_widgets.dart';

import '../../../app/shared/colors.dart';
import '../../../app/shared/dimensions.dart';
import '../../../app/shared/dimensions.dart';
import '../../../app/shared/dimensions.dart';
import '../../../app/shared/dimensions.dart';
import '../../../app/shared/dimensions.dart';

class Loginview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vSizedBox2,
            Icon(
              EvaIcons.twitter,
              size: 60.0,
              color: blueColor,
            ),
            vSizedBox3,
            Text(
              "Log in to Twitter",
              style: TextStyle(
                fontFamily: 'MontserratB',
                fontSize: 30.0,
                color: whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            vSizedBox2,
            CredentialBox(),
          ],
        ),
      ),
    );
  }
}
