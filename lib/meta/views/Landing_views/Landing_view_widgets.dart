import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:twitterclone/app/routes/routes.dart';
import 'package:twitterclone/app/shared/colors.dart';
import 'package:twitterclone/app/shared/dimensions.dart';
import 'package:twitterclone/meta/widgets/button.dart';

class LandingImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      curve: Curves.easeIn,
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/landingbg.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class LandingSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width > 900
          ? MediaQuery.of(context).size.width * 0.5
          : MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.only(left: 50.0),
        child: ListView(
          children: [
            vSizedBox4,
            vSizedBox3,
            Row(
              children: [
                Icon(
                  EvaIcons.twitter,
                  size: 60.0,
                  color: blueColor,
                ),
              ],
            ),
            vSizedBox4,
            Text(
              "Happning Now",
              style: TextStyle(
                fontFamily: 'MontserratB',
                color: whiteColor,
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
              ),
              // style: TextStyle(color: Colors.white),
            ),
            vSizedBox3,
            Text(
              "Join Twitter Today",
              style: TextStyle(
                fontFamily: 'MontserratB',
                fontSize: 30.0,
                color: whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            vSizedBox2,
            LandingButton(
              buttonColor: blueColor,
              buttonText: "Sign up",
              borderColor: blueColor,
              onPressed: () => Navigator.of(context).pushNamed(LoginRoute),
            ),
            vSizedBox1,
            LandingButton(
              buttonColor: blackColor,
              buttonText: "Log in",
              borderColor: blueColor,
              onPressed: () => Navigator.of(context).pushNamed(LoginRoute),
            ),
          ],
        ),
      ),
    );
  }
}
