import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 60.0, bottom: 20.0, left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context, true),
                      child: Icon(
                        Icons.chevron_left,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Contact us",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 23.0),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        padding: EdgeInsets.all(30.0),
                        child: Image.asset(
                          'assets/images/logo-name.png',
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFE3E3E3),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "info@alhazm.com",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Al Markhiya St, Doha",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        "Al Mirqab , Doha",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0),
                      ),
                      SizedBox(
                        height: 60.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/images/fb.png',
                            height: 40,
                            width: 40,
                          ),
                          Image.asset(
                            'assets/images/insta.png',
                            height: 40,
                            width: 40,
                          ),
                          Image.asset(
                            'assets/images/youtube.png',
                            height: 55,
                            width: 50,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
