import 'package:alhazm/routes/drawer.dart';
import 'package:alhazm/screens/app/home/widgets/categories-card.dart';
import 'package:alhazm/screens/app/home/widgets/event-card.dart';
import 'package:alhazm/screens/app/home/widgets/featured-card.dart';
import 'package:alhazm/screens/app/home/widgets/news-card.dart';
import 'package:alhazm/screens/app/home/widgets/offers-card.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var usernameStyle = TextStyle(
      color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w500);

  var usernameId = TextStyle(
      color: Colors.grey[200], fontSize: 15.0, fontWeight: FontWeight.w500);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFFE3E3E3),
        ),
        child: Container(
          width: 300,
          child: Drawer(
            child: MyDrawer(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFE3E3E3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/home-bg.png',
                      width: size.width,
                      height: size.width - 80,
                      /* color: Color.fromRGBO(255, 255, 255, 0.5),
                      colorBlendMode: BlendMode.modulate, */
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                      width: size.width,
                      height: size.width - 80,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              _scaffoldKey.currentState.openDrawer();
                            },
                            child: Icon(
                              Icons.format_align_justify_outlined,
                              color: Colors.white,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'LOREM IPSUM',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.0),
                              ),
                              Text(
                                'Get Bookmark your favorites \nrestaurant',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              )
                            ],
                          )
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0),
                      side: BorderSide(
                        color: Color(0xFF007481),
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, "/labbeh");
                  },
                  color: Color(0xFF007481),
                  textColor: Colors.white,
                  child: Container(
                    width: size.width - 70,
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          "Register Me to LABBEH",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0),
                        ),
                        Text(
                          "AL - HAZAM LOYALTY PROGRAM",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 9.0),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 22.0),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoriesCard(
                              heading: "Coffee shop",
                              image: 'assets/images/coffee-shop.png'),
                          CategoriesCard(
                              heading: "Restaurant",
                              image: 'assets/images/restaurant.png'),
                          CategoriesCard(
                              heading: "Shopping",
                              image: 'assets/images/shopping.png'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Featured",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 22.0),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/featured");
                          },
                          child: Text(
                            "See all",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0),
                          ),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          FeaturedCard(
                              title: 'Antico Café',
                              subtitle: 'Italian Concept',
                              image: 'assets/images/featured-1.png'),
                          FeaturedCard(
                              title: 'Le Train Blue',
                              subtitle: 'French Cuisine',
                              image: 'assets/images/featured-2.png'),
                          FeaturedCard(
                              title: 'Sole Avenue',
                              subtitle: 'Women Shoes & Bags',
                              image: 'assets/images/featured-3.png'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Offers",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 22.0),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/offers");
                          },
                          child: Text(
                            "See all",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0),
                          ),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          OffersCard(image: 'assets/images/offers1.png'),
                          OffersCard(image: 'assets/images/offers2.png'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Latest News",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 22.0),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/news");
                          },
                          child: Text(
                            "See all",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0),
                          ),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          NewsCard(
                              title: 'Lorem Ipsum',
                              subtitle:
                                  'Lorem Ipsum is simply dummy text of the\ printing and typesetting',
                              image: 'assets/images/news1.png'),
                          NewsCard(
                              title: 'Lorem Ipsum',
                              subtitle:
                                  'Lorem Ipsum is simply dummy text of the\ printing and typesetting',
                              image: 'assets/images/news2.png'),
                          NewsCard(
                              title: 'Lorem Ipsum',
                              subtitle:
                                  'Lorem Ipsum is simply dummy text of the\ printing and typesetting',
                              image: 'assets/images/news1.png'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Upcoming Events",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 22.0),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/events");
                          },
                          child: Text(
                            "See all",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0),
                          ),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          EventCard(
                              title: 'Lorem Ipsum',
                              subtitle:
                                  'Lorem Ipsum is simply dummy text of the printing and typesettin industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s,',
                              image: 'assets/images/event1.png'),
                          EventCard(
                              title: 'Lorem Ipsum',
                              subtitle:
                                  'Lorem Ipsum is simply dummy text of the printing and typesettin industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s,',
                              image: 'assets/images/event2.png'),
                          EventCard(
                              title: 'Lorem Ipsum',
                              subtitle:
                                  'Lorem Ipsum is simply dummy text of the printing and typesettin industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s,',
                              image: 'assets/images/event1.png'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0),
                      side: BorderSide(
                        color: Color(0xFF007481),
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, "/eventpass");
                  },
                  color: Color(0xFF007481),
                  textColor: Colors.white,
                  child: Container(
                    width: size.width - 70,
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        "Event Pass",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
