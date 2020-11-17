import 'package:alhazm/screens/app/featured/widgets/categories-list-card.dart';
import 'package:alhazm/screens/app/home/home.dart';
import 'package:alhazm/screens/app/notifications/notifications.dart';
import 'package:alhazm/screens/app/profile/profile.dart';
import 'package:flutter/material.dart';

class Featured extends StatefulWidget {
  @override
  _FeaturedState createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      //drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_important),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFE3E3E3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: <Widget>[
                  Image.asset(
                    'assets/images/featured-bg.png',
                    width: size.width,
                    height: size.width - 80,
                    /* color: Color.fromRGBO(255, 255, 255, 0.5),
                      colorBlendMode: BlendMode.modulate, */
                    fit: BoxFit.cover,
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
                              Navigator.pop(context, true);
                            },
                            child: Icon(
                              Icons.chevron_left,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Featured'.toUpperCase(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.0),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Get your favorites \nrestaurant',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                            ],
                          )
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                child: Wrap(
                  direction: Axis.horizontal,
                  children: [
                    CategoriesListCard(
                        title: 'Antico Café',
                        subtitle: 'Italian Concept',
                        image: 'assets/images/featured-1.png'),
                    CategoriesListCard(
                        title: 'Le Train Blue',
                        subtitle: 'French Cuisine',
                        image: 'assets/images/coffee-shop2.png'),
                    CategoriesListCard(
                        title: 'Sole Avenue',
                        subtitle: 'Women Shoes & Bags',
                        image: 'assets/images/choco-lab.png'),
                    CategoriesListCard(
                        title: 'Antico Café',
                        subtitle: 'Italian Concept',
                        image: 'assets/images/featured-1.png'),
                    CategoriesListCard(
                        title: 'L’eto Café',
                        subtitle: 'Khayaban shahbaz (karachi)',
                        image: 'assets/images/coffee-shop3.png'),
                    CategoriesListCard(
                        title: 'L’eto Café',
                        subtitle: 'Khayaban shahbaz (karachi)',
                        image: 'assets/images/coffee-shop3.png'),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
