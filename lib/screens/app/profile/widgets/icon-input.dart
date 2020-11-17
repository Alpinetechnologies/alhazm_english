import 'package:flutter/material.dart';

class IconInput extends StatelessWidget {
  const IconInput({
    Key key,
    @required this.icon,
    this.placeholder,
    this.editicon,
  }) : super(key: key);

  final IconData icon;
  final String placeholder;
  final bool editicon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width - 80,
      margin: EdgeInsets.symmetric(vertical: 5.0),
      child: TextField(
        autocorrect: true,
        style: TextStyle(
          fontSize: 14,
          color: Color(0xFF454F63),
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          suffixIcon: editicon == true
              ? IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    size: 20,
                  ),
                )
              : null,
          hintStyle: TextStyle(
            color: Color(0xFF454F63),
          ),
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
