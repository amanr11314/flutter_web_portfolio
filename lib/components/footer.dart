// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 36.0),
      decoration: BoxDecoration(
        color: primaryColor,
        // borderRadius: BorderRadius.only(topRight: Radius.circular(30.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Connect with me Socially',
            style: TextStyle(
                fontSize: 18.0, fontWeight: FontWeight.w400, color: offWhite),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: FaIcon(FontAwesomeIcons.github),
                iconSize: 28.0,
                onPressed: () {
                  launch(githubUrl);
                },
              ),
              VerticalDivider(
                color: darkBackground1,
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.twitter),
                iconSize: 28.0,
                onPressed: () {
                  launch(twitterUrl);
                },
              ),
              VerticalDivider(
                color: darkBackground1,
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.linkedin),
                iconSize: 28.0,
                onPressed: () {
                  launch(linkedInUrl);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
