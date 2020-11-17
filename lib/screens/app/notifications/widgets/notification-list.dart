import 'package:flutter/material.dart';

class NotificationList extends StatelessWidget {
  final String image;
  final String time;
  final String notification;

  const NotificationList({
    Key key,
    this.image,
    this.time,
    this.notification,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(image),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  time,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 14.0),
                ),
                Text(
                  notification,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
