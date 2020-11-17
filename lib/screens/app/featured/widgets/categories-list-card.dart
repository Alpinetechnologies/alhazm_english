import 'package:flutter/material.dart';

class CategoriesListCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  CategoriesListCard({
    @required this.title,
    @required this.image,
    @required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/featureddetails");
      },
      child: Container(
        width: size.width / 2 - 20,
        height: 180,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image,
                fit: BoxFit.fill,
                width: size.width / 2 - 20,
                height: 120,
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 12.0),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 7.0),
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
