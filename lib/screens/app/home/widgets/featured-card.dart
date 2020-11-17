import 'package:flutter/material.dart';

class FeaturedCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  FeaturedCard({
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
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              fit: BoxFit.fill,
              height: 100,
              width: 100,
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
                        fontWeight: FontWeight.w600,
                        fontSize: 9.0),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
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
    );
  }
}
