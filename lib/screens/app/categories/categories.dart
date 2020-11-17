import 'package:alhazm/screens/app/categories/widgets/categories-list-card.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
                    'assets/images/coffee-bg.png',
                    width: size.width,
                    height: size.width - 80,
                    /* color: Color.fromRGBO(255, 255, 255, 0.5),
                      colorBlendMode: BlendMode.modulate, */
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: size.width,
                    height: size.width - 50,
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
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
                            Text(
                              'Coffee shop'.toUpperCase(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Get Bookmark your favorites \nrestaurant',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Center(
                              child: Container(
                                width: size.width - 40,
                                color: Colors.white,
                                child: TextField(
                                  autocorrect: true,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF8B734B),
                                  ),
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.search),
                                    hintText: 'Search Restaurant',
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Theme.of(context).accentColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                          side: BorderSide(
                            color: Color(0xFF007481),
                          )),
                      onPressed: () {},
                      color: Color(0xFF007481),
                      textColor: Colors.white,
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "All",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      onPressed: () {},
                      color: Colors.white,
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Near by",
                          style: TextStyle(
                              color: Color(0xFF007481),
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                child: Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  children: [
                    CategoriesListCard(
                        title: 'Signor Sassi',
                        subtitle: 'Khayaban shahbaz (karachi)',
                        image: 'assets/images/coffee-shop2.png'),
                    CategoriesListCard(
                        title: 'Chocolate Lab',
                        subtitle: 'Khayaban shahbaz (karachi)',
                        image: 'assets/images/choco-lab.png'),
                    CategoriesListCard(
                        title: 'L’eto Café',
                        subtitle: 'Khayaban shahbaz (karachi)',
                        image: 'assets/images/coffee-shop3.png'),
                    CategoriesListCard(
                        title: 'Antico Café',
                        subtitle: 'French Cuisine',
                        image: 'assets/images/featured-1.png'),
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
