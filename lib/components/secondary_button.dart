import 'package:flutter/material.dart';

import '../constants.dart';

TextButton getSecondaryButton(
    {String title, bool isMobile = false, Function onPressed}) {
  return TextButton(
    child: Container(
      padding: isMobile
          ? EdgeInsets.all(8.0)
          : EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          fontFamily: 'Montserrat',
          color: primaryColor,
        ),
      ),
    ),
    style: TextButton.styleFrom(
      primary: primaryColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: primaryColor,
          width: 1.4,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      backgroundColor: Colors.transparent,
      textStyle: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
      ),
    ),
    onPressed: onPressed,
  );
}
