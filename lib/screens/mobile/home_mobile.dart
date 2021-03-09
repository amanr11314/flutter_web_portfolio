import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_web/components/heading_content_tile.dart';
import 'package:test_web/components/primary_button.dart';
import 'package:test_web/components/secondary_button.dart';
import 'package:test_web/constants.dart';
import 'package:test_web/controller/page_controller.dart';

class HomeMobile extends StatelessWidget {
  HomeMobile({
    Key key,
  }) : super(key: key);
  final MyPageController _controller = Get.find(tag: 'GlobalPageController');
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: darkBackground1,
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'images/app-dev.png',
                width: 250,
                height: 180,
                fit: BoxFit.contain,
              ),
              Text(
                'Aman Raj',
                style: TextStyle(
                  color: offWhite,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'App Developer',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        //all other sections
        Column(
          children: [
            HeadingContentTile(
              isOffWhite: true,
              isMobile: true,
              title: 'Experience',
              duration: 'Jan 2020 - June 2020',
              content:
                  'I developed alpha version of app for a startup in my college using Flutter. I also used best practices during development : Provider package for state management',
            ),
            HeadingContentTile(
              title: 'Technologies',
              isMobile: true,
              content:
                  'I am familiar with Android, Flutter, C++14, HTML5, CSS3, Git, JavaScript, Kotlin, Dart, Java',
            ),
            HeadingContentTile(
              isOffWhite: true,
              isMobile: true,
              title: 'Projects',
              content:
                  'I like to showcase my work and thus you can see my projects hosted online.',
              btnPrimary: getPrimaryButton(
                title: 'See Projects',
                onPressed: () {
                  _controller.currentPage(1);
                },
              ),
            ),
            HeadingContentTile(
              isMobile: true,
              title: 'Blogs',
              content:
                  'I am also working on some technical and non technical blogs. I like to document my journey of learning.',
              btnPrimary: getSecondaryButton(
                title: 'Read Blogs',
                onPressed: () {
                  _controller.currentPage(2);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
