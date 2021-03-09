import 'package:flutter/material.dart';

import '../constants.dart';

class BlogPage extends StatelessWidget {
  final bool isMobile;

  BlogPage({this.isMobile});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: darkBackground1,
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'My ',
                    style: TextStyle(
                      color: offWhite,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    ' Blogs',
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: isMobile
              ? MediaQuery.of(context).size.height * 0.7
              : MediaQuery.of(context).size.height * 0.60,
          color: darkBackground1,
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Coming Soon...',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
