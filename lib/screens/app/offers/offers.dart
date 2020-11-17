import 'package:alhazm/screens/app/categories/widgets/categories-list-card.dart';
import 'package:alhazm/screens/app/offers/widgets/offers-card.dart';
import 'package:flutter/material.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
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
                    'assets/images/offer-bg.png',
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Offers'.toUpperCase(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.0),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Get your favorites \noffers',
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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                child: Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  children: [
                    OffersCard(image: 'assets/images/offer3.png'),
                    OffersCard(image: 'assets/images/offer4.png'),
                    OffersCard(image: 'assets/images/offer5.png'),
                    OffersCard(image: 'assets/images/offer6.png'),
                    OffersCard(image: 'assets/images/offer7.png'),
                    OffersCard(image: 'assets/images/offer8.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
