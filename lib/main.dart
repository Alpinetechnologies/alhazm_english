import 'package:alhazm/home.dart';
import 'package:alhazm/screens/app/about/about.dart';
import 'package:alhazm/screens/app/categories/categories.dart';
import 'package:alhazm/screens/app/categories/category-details.dart';
import 'package:alhazm/screens/app/contact/contact-us.dart';
import 'package:alhazm/screens/app/events/event-details.dart';
import 'package:alhazm/screens/app/events/event-pass-details.dart';
import 'package:alhazm/screens/app/events/event-pass.dart';
import 'package:alhazm/screens/app/events/events.dart';
import 'package:alhazm/screens/app/featured/featured-details.dart';
import 'package:alhazm/screens/app/featured/featured.dart';
import 'package:alhazm/screens/app/gold-points/add-points.dart';
import 'package:alhazm/screens/app/gold-points/gold-points.dart';
import 'package:alhazm/screens/app/gold-points/redeem-point.dart';
import 'package:alhazm/screens/app/home/home.dart';
import 'package:alhazm/screens/app/labbeh/labbeh.dart';
import 'package:alhazm/screens/app/latest-news/latest-news.dart';
import 'package:alhazm/screens/app/latest-news/news-details.dart';
import 'package:alhazm/screens/app/notifications/notifications.dart';
import 'package:alhazm/screens/app/offers/offers-details.dart';
import 'package:alhazm/screens/app/offers/offers.dart';
import 'package:alhazm/screens/app/privacy/privacy.dart';
import 'package:alhazm/screens/app/profile/profile.dart';
import 'package:alhazm/screens/auth/sign-in/enter-otp.dart';
import 'package:alhazm/screens/auth/sign-in/sign-in.dart';
import 'package:alhazm/screens/auth/splash/splash.dart';

import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String username;
  String token;

  void myLogin() {
    setState(() {
      username = "username";
      Timer(
          Duration(seconds: 5), () => Navigator.pushNamed(context, "/splash"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF007481),
        accentColor: Color(0xFF65410D),
        fontFamily: 'Montserrat',
        appBarTheme: AppBarTheme(
          color: Color(0xFF007481),
        ),
      ),
      initialRoute: "/",
      routes: {
        /* "/": (context) =>
            (username == null) ? AuthWidget(myLogin: myLogin) : AppWidget(), */
        "/": (context) => SplashScreen(),
        "/app": (context) => AppWidget(),
        "/auth": (context) => AuthWidget(myLogin: myLogin),
        "/enterotp": (context) => EnterOTP(myLogin: myLogin),
        "/home": (context) => HomeScreen(),
        "/categories": (context) => Categories(),
        "/categorydetails": (context) => CategoryDetails(),
        "/featured": (context) => Featured(),
        "/featureddetails": (context) => FeaturedDetails(),
        "/offers": (context) => Offers(),
        "/offersdetails": (context) => OffersDetails(),
        "/news": (context) => LatestNews(),
        "/newsdetails": (context) => NewsDetails(),
        "/events": (context) => Events(),
        "/eventsdetails": (context) => EventDetails(),
        "/eventpass": (context) => EventPass(),
        "/eventpassdetails": (context) => EventPassDetails(),
        "/userprofile": (context) => UserProfile(),
        "/notifications": (context) => Notifications(),
        "/goldpoints": (context) => GoldPoints(),
        "/addpoints": (context) => AddPoints(),
        "/redeempoints": (context) => RedeemPoint(),
        "/about": (context) => About(),
        "/contactus": (context) => ContactUs(),
        "/privacy": (context) => Privacy(),
        "/labbeh": (context) => Labbeh(),
      },
    );
  }
}

class AuthWidget extends StatelessWidget {
  AuthWidget({@required this.myLogin});
  final VoidCallback myLogin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignIn(myLogin: myLogin),
    );
  }
}
