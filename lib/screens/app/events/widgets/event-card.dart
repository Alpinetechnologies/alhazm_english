import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final Function navigate;

  EventCard({
    @required this.title,
    @required this.image,
    @required this.subtitle,
    this.navigate,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: navigate,
      child: Container(
        width: size.width - 20,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image,
                fit: BoxFit.fill,
                width: size.width - 20,
                height: 160,
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 12.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          width: size.width - 60,
                          child: Text(
                            subtitle,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 9.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1.0),
          ),
          margin: EdgeInsets.only(top: 10.0, right: 5.0, left: 5.0),
        ),
      ),
    );
  }
}
