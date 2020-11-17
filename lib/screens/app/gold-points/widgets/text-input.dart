import 'package:flutter/material.dart';

class TextBorderInput extends StatelessWidget {
  final String placeholder;

  const TextBorderInput({
    Key key,
    @required this.size,
    this.placeholder,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width - 100,
      //margin: EdgeInsets.symmetric(vertical: 10.0),
      child: TextField(
        autocorrect: true,
        style: TextStyle(
          fontSize: 13,
          color: Color(0xFF8B734B),
        ),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: placeholder,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).accentColor,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
      ),
    );
  }
}
