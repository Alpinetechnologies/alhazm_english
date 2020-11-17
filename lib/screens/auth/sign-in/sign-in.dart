import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({
    Key key,
    @required this.myLogin,
  }) : super(key: key);

  final myLogin;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0xFFE3E3E3),
      child: Center(
        child: Card(
          child: Container(
            width: MediaQuery.of(context).size.width - 60,
            height: 415,
            color: Color(0xFFFFFFFF),
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/logo-name.png',
                  height: 133,
                  width: 93,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF007481),
                  ),
                ),
                Container(
                  width: size.width - 100,
                  child: TextField(
                    autocorrect: true,
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF8B734B),
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Mobile Number',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).accentColor,
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
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(
                        color: Color(0xFF007481),
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, "/enterotp");
                  },
                  color: Color(0xFF007481),
                  textColor: Colors.white,
                  child: Container(
                    width: 100,
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.arrow_right_alt,
                      size: 25,
                    ),
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

/* child: Center(
          child: Column(children: <Widget>[
        RaisedButton(child: Text("Jump to Home"), onPressed: myLogin),
        RaisedButton(child: Text("Login"), onPressed: () {
            Navigator.pushNamed(context, "/login");
          },),
        RaisedButton(child: Text("Jump to SingnUp"), onPressed: null)
      ],),), */
