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
        Navigator.pushNamed(context, "/categorydetails");
      },
      child: Container(
        width: size.width / 2 - 20,
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
                width: size.width / 2 - 20,
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
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
                        Text(
                          subtitle,
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 7.0),
                        ),
                        Text(
                          "American Fast Food ",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 7.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "More Information",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 5.0),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 10,
                              color: Theme.of(context).primaryColor,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.phone,
                          size: 15.0,
                          color: Color(0xFF65410D),
                        ),
                        shape: CircleBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1.0),
          ),
          margin: EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
        ),
      ),
    );
  }
}
