import 'package:flutter/material.dart';


class SignUp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Widget _buildCoverImage(Size screenSize) {
    return Container(
      height: 292,
      decoration: BoxDecoration(
        image: DecorationImage(
          
          image: new AssetImage(
              'assets/images/user.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: new Stack(
        children: <Widget>[
          new Positioned(
            right: 4.0,
            bottom: 4.0,
            child: InkWell(
              onTap: () {
                print("tapped");
              },
              child: new Icon(
                Icons.camera_alt,
                color: Colors.grey[200],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileImage() {
    return Container(
      width: 110.0,
      height: 110.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://i.pinimg.com/originals/bc/62/25/bc622526e4ab48a6144e52987ddc9eb9.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
          color: Colors.white,
          width: 5.0,
        ),
      ),
      child: Stack(
        children: <Widget>[
          new Positioned(
            right: 4.0,
            bottom: 4.0,
            child: InkWell(
              onTap: () {
                print("tapped");
              },
              child: new Icon(
                Icons.camera_alt,
                color: Colors.grey[200],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFullName() {
    TextStyle _nameTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.black,
      fontSize: 22.0,
      fontWeight: FontWeight.w700,
    );

    return Text(
      "Username",
      style: _nameTextStyle,
    );
  }

  Widget _buildEditButton(context) {
    return ButtonTheme(
      minWidth: 120.0,
      child: Column(
        children: [
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide(color: Theme.of(context).accentColor, width: 1),
            ),
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            padding: EdgeInsets.all(12.0),
            onPressed: () {
              Navigator.pushNamed(context, "/editprofile");
            },
            child: Text(
              "Edit your public profile".toUpperCase(),
              style: TextStyle(
                  fontSize: 11.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

    return Scaffold(
          body: Center(
            child: Container(
         width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: 
        Stack(
            children: <Widget>[
              _buildCoverImage(screenSize),
              Column(
                children: <Widget>[
                  SizedBox(height: screenSize.height / 7.5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        
                        children: [
                          _buildProfileImage(),
                          SizedBox(height: 15),
                          _buildFullName(),
                        ],
                      ),
                      _buildEditButton(context),
                    ],
                  ),
                ],
              ),
            ],
          ),
        
      ),
          ),
    );
  }
}