import 'package:twitterclone/meta/views/Landing_views/landing_view.dart';
import 'package:twitterclone/meta/views/Login_views/Login_view.dart';
import 'package:twitterclone/meta/views/Signup_views/Signup_view.dart';
import 'package:twitterclone/meta/views/Splash_views/splash_view.dart';

const String SplashRoute = "/splash";
const String LandingRoute = "/landing";
const String LoginRoute = "/login";
const String SignupRoute = "/signup";

final routes = {
  SplashRoute: (context) => Splashview(),
  LandingRoute: (context) => Landingview(),
  LoginRoute: (context) => Loginview(),
  SignupRoute: (context) => Signupview(),
};
