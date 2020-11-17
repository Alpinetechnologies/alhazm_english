import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class EventDetails extends StatefulWidget {
  @override
  _EventDetailsState createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _onBasicAlertPressed(context) {
    Alert(
      context: context,
      title: "Register",
      desc: "Do you want to register for this event ?",
      buttons: [
        DialogButton(
          child: Text(
            "YES",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          onPressed: () => Navigator.pop(context),
          color: Theme.of(context).primaryColor,
        ),
        DialogButton(
          child: Text(
            "NO",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          onPressed: () => Navigator.pop(context),
          color: Theme.of(context).primaryColor,
        ),
      ],
    ).show();
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
                    'assets/images/event3.png',
                    width: size.width,
                    height: size.width - 80,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    left: 15,
                    top: 40,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context, true);
                      },
                      child: Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
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
                      'Description',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It isa long established fact thareader will be distracted by the readable content of a page when looking at its layout.',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          height: 1.5,
                          fontWeight: FontWeight.w400),
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
                      height: 20.0,
                    ),
                    Center(
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                            side: BorderSide(
                              color: Color(0xFF007481),
                            )),
                        onPressed: () => _onBasicAlertPressed(context),
                        color: Color(0xFF007481),
                        textColor: Colors.white,
                        child: Container(
                          width: size.width - 100,
                          padding: const EdgeInsets.all(17.0),
                          child: Center(
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Contact Person',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Zayn Malik',
                      style: TextStyle(
                          color: Color(0xFF2D2B44),
                          fontWeight: FontWeight.w700,
                          fontSize: 12.0),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Teeb Alhazm April 2020',
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
