import 'package:flutter/material.dart';

class GoldPoints extends StatefulWidget {
  @override
  _GoldPointsState createState() => _GoldPointsState();
}

class _GoldPointsState extends State<GoldPoints> {
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
          child: Container(
              margin: EdgeInsets.only(top: 60.0),
              child: Stack(
                children: [
                  Positioned(
                    top: 0.0,
                    left: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new InkWell(
                        onTap: () => Navigator.pop(context, true),
                        child: Icon(
                          Icons.chevron_left,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/userprofile");
                        },
                        child: CircleAvatar(
                          radius: 96,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 95,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 90,
                              backgroundImage:
                                  AssetImage('assets/images/zian.png'),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Zayn Malik",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                            fontSize: 29.0),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "+974 1234 5678",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                            fontSize: 15.0),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/diamond.png',
                            fit: BoxFit.fill,
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "300",
                            style: TextStyle(
                                color: Color(0xFF454F63), fontSize: 19),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text("Gold",
                              style: TextStyle(
                                  color: Color(0xFF454F63), fontSize: 15)),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.0),
                              side: BorderSide(
                                color: Theme.of(context).primaryColor,
                              )),
                          onPressed: () {
                            Navigator.pushNamed(context, "/addpoints");
                          },
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          child: Container(
                            width: size.width - 100,
                            height: 55,
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                "Add points",
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
                        height: 20,
                      ),
                      Center(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.0),
                              side: BorderSide(
                                color: Theme.of(context).accentColor,
                              )),
                          onPressed: () {
                            Navigator.pushNamed(context, "/redeempoints");
                          },
                          color: Theme.of(context).accentColor,
                          textColor: Colors.white,
                          child: Container(
                            width: size.width - 100,
                            height: 55,
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                "Redeem Points",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
