import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Labbeh extends StatefulWidget {
  @override
  _LabbehState createState() => _LabbehState();
}

class _LabbehState extends State<Labbeh> {
  _onBasicAlertPressed(context) {
    Alert(
      context: context,
      title: "Congratulations !",
      desc: "You have earned 100 LABBEH Points!",
      buttons: [],
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: Color(0xFFE3E3E3),
        child: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.only(top: 60.0),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0, bottom: 60.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () => Navigator.pop(context, true),
                          child: Icon(
                            Icons.chevron_left,
                            size: 35,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          "LABBEH",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 23.0),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
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
                        height: 10.0,
                      ),
                      Text(
                        "+974 1234 5678",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                            fontSize: 15.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 65.0, horizontal: 40.0),
                        child: Row(
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (newValue) {},
                            ),
                            Flexible(
                              child: Text(
                                "I accept the terms and conditions of LABBEH Points",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.0),
                              side: BorderSide(
                                color: Theme.of(context).primaryColor,
                              )),
                          onPressed: () => _onBasicAlertPressed(context),
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          child: Container(
                            width: size.width - 100,
                            height: 55,
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                "Submit",
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
