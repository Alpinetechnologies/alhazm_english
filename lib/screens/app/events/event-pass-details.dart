import 'package:flutter/material.dart';

class EventPassDetails extends StatefulWidget {
  @override
  _EventPassDetailsState createState() => _EventPassDetailsState();
}

class _EventPassDetailsState extends State<EventPassDetails> {
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
      body: Container(
        width: size.width,
        height: size.height,
        color: Color(0xFFE3E3E3),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50.0, bottom: 20.0, left: 10.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context, true);
                      },
                      child: Icon(
                        Icons.chevron_left,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Event Pass",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 23.0),
                    ),
                  ],
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/images/hadarah.png',
                  width: size.width - 100,
                  height: size.width / 2,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Center(
                child: Image.asset(
                  'assets/images/qr-code.png',
                  width: 171,
                  height: 171,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Center(
                child: Image.asset(
                  'assets/images/timer.png',
                  width: size.width - 100,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hadarah Perfumes 2020",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          child: RawMaterialButton(
                            onPressed: () {},
                            elevation: 2.0,
                            fillColor: Colors.white,
                            child: Image.asset(
                              'assets/images/share-icon.png',
                              width: 30,
                              height: 30,
                              fit: BoxFit.fill,
                            ),
                            shape: CircleBorder(),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          child: RawMaterialButton(
                            onPressed: () {},
                            elevation: 2.0,
                            fillColor: Colors.white,
                            child: Image.asset(
                              'assets/images/call-icon.png',
                              width: 25,
                              height: 25,
                              fit: BoxFit.fill,
                            ),
                            shape: CircleBorder(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Timing',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Start : ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 12.0),
                        ),
                        Icon(
                          Icons.calendar_today,
                          size: 10,
                          color: Color(0xFF2D2B44),
                        ),
                        Text(
                          ' 11-06-2020 ',
                          style: TextStyle(
                              color: Color(0xFF2D2B44),
                              fontWeight: FontWeight.w700,
                              fontSize: 12.0),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.lock_clock,
                          size: 10,
                          color: Color(0xFF2D2B44),
                        ),
                        Text(
                          ' 09:00AM',
                          style: TextStyle(
                              color: Color(0xFF2D2B44),
                              fontWeight: FontWeight.w700,
                              fontSize: 12.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Start : ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 12.0),
                        ),
                        Icon(
                          Icons.calendar_today,
                          size: 10,
                          color: Color(0xFF2D2B44),
                        ),
                        Text(
                          ' 11-06-2020 ',
                          style: TextStyle(
                              color: Color(0xFF2D2B44),
                              fontWeight: FontWeight.w700,
                              fontSize: 12.0),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.lock_clock,
                          size: 10,
                          color: Color(0xFF2D2B44),
                        ),
                        Text(
                          ' 09:00AM',
                          style: TextStyle(
                              color: Color(0xFF2D2B44),
                              fontWeight: FontWeight.w700,
                              fontSize: 12.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'Organization',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Hadarah Perfumes 2020',
                      style: TextStyle(
                          color: Color(0xFF2D2B44),
                          fontWeight: FontWeight.w700,
                          fontSize: 12.0),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '+974 1236 5498',
                      style: TextStyle(
                          color: Color(0xFF2D2B44),
                          fontWeight: FontWeight.w700,
                          fontSize: 12.0),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'info@alhazm.com',
                      style: TextStyle(
                          color: Color(0xFF2D2B44),
                          fontWeight: FontWeight.w700,
                          fontSize: 12.0),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Al Markhiya St, Doha',
                      style: TextStyle(
                          color: Color(0xFF2D2B44),
                          fontWeight: FontWeight.w700,
                          fontSize: 12.0),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Al Mirqab , Doha',
                      style: TextStyle(
                          color: Color(0xFF2D2B44),
                          fontWeight: FontWeight.w700,
                          fontSize: 12.0),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
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
