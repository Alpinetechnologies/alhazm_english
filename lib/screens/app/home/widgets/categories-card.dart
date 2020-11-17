import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  final String heading;
  final String image;

  CategoriesCard({
    @required this.heading,
    @required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/categories");
      },
      child: Container(
        height: 100,
        width: 100,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(top: 20.0, right: 10.0),
        color: Color(0xFF8B734B),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              image,
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            ),
            Text(
              heading.toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 9.0),
            )
          ],
        )),
      ),
    );
  }
}
