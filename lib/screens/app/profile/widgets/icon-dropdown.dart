import 'package:flutter/material.dart';

class IconDropdown extends StatelessWidget {
  const IconDropdown({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width - 80,
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFF8B734B),
            width: 1.0,
          ),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            padding: EdgeInsets.only(left: 44.0),
            margin: EdgeInsets.only(left: 5.0, right: 16.0),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                  isExpanded: true,
                  items: [
                    new DropdownMenuItem(
                        child: new Text(
                      "English",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF454F63),
                      ),
                    )),
                    new DropdownMenuItem(
                        child: new Text(
                      "Arabic",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF454F63),
                      ),
                    )),
                  ],
                  hint: new Text(
                    "Select Language",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF454F63),
                    ),
                  ),
                  onChanged: (_) {}),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0, left: 12.0),
            child: Icon(
              Icons.language,
              color: Colors.grey,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
