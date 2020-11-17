import 'package:flutter/material.dart';

class OffersCard extends StatelessWidget {
  final String image;

  OffersCard({
    @required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/offersdetails");
      },
      child: InkWell(
        child: Card(
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.fill,
                width: 200,
                height: 150,
              ),
              Container(
                width: 200,
                height: 150,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '50% OFFER',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 26.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesettin industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s,',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 7.0),
                      ),
                    )
                  ],
                )),
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
