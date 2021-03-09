import 'package:flutter/material.dart';

import '../constants.dart';

TextButton getPrimaryButton(
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
        ),
      ),
    ),
    style: TextButton.styleFrom(
      primary: offWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      backgroundColor: primaryColor,
      textStyle: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
      ),
    ),
    onPressed: onPressed,
  );
}
