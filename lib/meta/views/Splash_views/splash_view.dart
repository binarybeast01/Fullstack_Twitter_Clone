import 'dart:async';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:twitterclone/app/routes/routes.dart';

import '../../../app/shared/colors.dart';

class Splashview extends StatefulWidget {
  @override
  _SplashviewState createState() => _SplashviewState();
}

class _SplashviewState extends State<Splashview> {
  @override
  void initState() {
    Timer(Duration(seconds: 2),
        () => Navigator.of(context).pushNamed(LandingRoute));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Center(
        child: Icon(
          EvaIcons.twitter,
          size: 130.0,
          color: blueColor,
        ),
      ),
    );
  }
}
