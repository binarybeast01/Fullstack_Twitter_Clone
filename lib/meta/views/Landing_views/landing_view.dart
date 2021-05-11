import 'package:flutter/material.dart';
import 'package:twitterclone/app/shared/colors.dart';
import 'package:twitterclone/meta/views/Landing_views/Landing_view_widgets.dart';

class Landingview extends StatefulWidget {
  @override
  _LandingviewState createState() => _LandingviewState();
}

class _LandingviewState extends State<Landingview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Row(
        children: [
         if(MediaQuery.of(context).size.width > 900) LandingImage(),
          LandingSidebar()
        ],
      ),
    );
  }
}
