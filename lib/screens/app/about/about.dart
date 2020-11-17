import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
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
            margin:
                EdgeInsets.only(top: 60.0, bottom: 20.0, left: 5.0, right: 5.0),
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
                      "About us",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 23.0),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "About us",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "About Us Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            fontSize: 12.0),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Vision",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "About Us Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            fontSize: 12.0),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Mission",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "About Us Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            fontSize: 12.0),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
