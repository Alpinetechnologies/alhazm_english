import 'package:alhazm/screens/app/notifications/widgets/notification-list.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      // drawer: Drawer(),
      body: Container(
        width: size.width,
        height: size.height,
        color: Color(0xFFE3E3E3),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 60.0, bottom: 20.0, left: 10.0),
                child: Row(
                  children: [
                    InkWell(
                      //onTap: () => Navigator.pop(context, true),
                      child: Icon(
                        Icons.chevron_left,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Notifications",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 23.0),
                    ),
                  ],
                ),
              ),
              NotificationList(
                image: 'assets/images/notification.png',
                time: "5.30 PM",
                notification:
                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonum",
              ),
              NotificationList(
                image: 'assets/images/notification.png',
                time: "4.30 PM",
                notification:
                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonum",
              ),
              NotificationList(
                image: 'assets/images/notification.png',
                time: "4.30 PM",
                notification:
                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonum",
              ),
              NotificationList(
                image: 'assets/images/notification.png',
                time: "4.30 PM",
                notification:
                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonum",
              ),
              NotificationList(
                image: 'assets/images/notification.png',
                time: "4.30 PM",
                notification:
                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonum",
              ),
              NotificationList(
                image: 'assets/images/notification.png',
                time: "4.30 PM",
                notification:
                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonum",
              ),
              NotificationList(
                image: 'assets/images/notification.png',
                time: "4.30 PM",
                notification:
                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonum",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
