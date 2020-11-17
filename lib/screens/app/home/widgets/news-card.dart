import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  NewsCard({
    @required this.title,
    @required this.image,
    @required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/newsdetails");
      },
      child: Container(
        width: 155,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image,
                fit: BoxFit.fill,
                width: 163,
                height: 108,
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 12.0),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 7.0),
                    ),
                  ],
                ),
              )
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1.0),
          ),
          margin: EdgeInsets.only(top: 20.0, right: 10.0),
        ),
      ),
    );
  }
}
