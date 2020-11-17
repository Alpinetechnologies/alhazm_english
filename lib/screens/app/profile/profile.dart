import 'package:alhazm/screens/app/profile/widgets/icon-dropdown.dart';
import 'package:alhazm/screens/app/profile/widgets/icon-input.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      //drawer: Drawer(),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFE3E3E3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height,
                width: size.width,
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/zian.png',
                      width: size.width,
                      height: 320,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      top: 150.0,
                      left: 20.0,
                      child: Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      top: 100.0,
                      right: 20.0,
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                    Positioned(
                      top: 275,
                      left: 20,
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        //height: 300,
                        color: Colors.white,
                        width: size.width - 40,
                        child: Column(
                          children: [
                            IconInput(
                              icon: Icons.account_box,
                              placeholder: 'Name',
                              editicon: true,
                            ),
                            IconInput(
                              icon: Icons.email,
                              placeholder: 'username@gmail.com',
                              editicon: false,
                            ),
                            IconInput(
                              icon: Icons.phone,
                              placeholder: '+974 1234 5678',
                              editicon: false,
                            ),
                            IconInput(
                              icon: Icons.place,
                              placeholder: 'Al Markhiya St, Doha',
                              editicon: false,
                            ),
                            IconDropdown(),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      left: 25,
                      child: Center(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.0),
                              side: BorderSide(
                                color: Color(0xFF007481),
                              )),
                          onPressed: () {},
                          color: Color(0xFF007481),
                          textColor: Colors.white,
                          child: Container(
                            width: size.width - 80,
                            height: 50,
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                'Update profile',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0),
                              ),
                            ),
                          ),
                        ),
                      ),
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
