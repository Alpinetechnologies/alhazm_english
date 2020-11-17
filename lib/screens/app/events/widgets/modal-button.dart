import 'package:flutter/material.dart';

class ModalButton extends StatelessWidget {
  final String title;

  ModalButton({
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2.0),
            side: BorderSide(
              color: Color(0xFF007481),
            )),
        onPressed: () {
          //Navigator.pushNamed(context, "/priceAlerts");
        },
        color: Color(0xFF007481),
        textColor: Colors.white,
        child: Container(
          width: 50,
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0),
            ),
          ),
        ),
      ),
    );
  }
}
