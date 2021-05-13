import 'package:flutter/material.dart';

import '../constants.dart';

class HeadingContentTile extends StatelessWidget {
  final bool isOffWhite;
  final String title;
  final bool isMobile;
  final String duration;
  final String content;
  final Widget btnPrimary;
  final Widget btnSecondary;
  final String iconUrlString;

  HeadingContentTile(
      {Key key,
      this.isOffWhite = false,
      this.title,
      this.isMobile = false,
      this.duration,
      this.content,
      this.iconUrlString,
      this.btnPrimary,
      this.btnSecondary});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: isOffWhite ? darkBackground1.withOpacity(0.95) : darkBackground1,
      padding: isMobile
          ? EdgeInsets.all(20.0)
          : EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.25,
              vertical: 36.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.40,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                if (iconUrlString != null)
                  Image.network(
                    iconUrlString,
                    height: 40.0,
                    width: 40.0,
                  ),
                Text(
                  title,
                  style: TextStyle(
                    color: offWhite,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            if (duration != null)
              Text(
                duration,
                style: TextStyle(
                  color: offWhite,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            SizedBox(height: 16.0),
            Text(
              content,
              softWrap: true,
              style: TextStyle(
                color: offWhite,
                fontWeight: FontWeight.w400,
                fontSize: isMobile ? 18.0 : 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            if (btnPrimary != null || btnSecondary != null)
              Row(
                children: [
                  if (btnPrimary != null) btnPrimary,
                  if (btnPrimary != null) SizedBox(width: 16.0),
                  if (btnSecondary != null) btnSecondary,
                ],
              )
          ],
        ),
      ),
    );
  }
}
