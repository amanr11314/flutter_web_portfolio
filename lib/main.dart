//neccesary packages import
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';
import 'package:Portfolio/screens/blog.dart';
//screens import
import 'screens/screens.dart';
//some predefined constants import
import 'constants.dart';
//neccessary componenes import
import 'components/footer.dart';

//page controller import
import 'controller/page_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aman Raj | Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        // primarySwatch: primaryColor,
        primarySwatch: colorPrimary,
      ),
      home: HomePage(),
      color: darkBackground1,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final MyPageController myPageController =
      Get.put(MyPageController(), tag: 'GlobalPageController');

  final ScrollController _controller = new ScrollController();

  @override
  void initState() {
    super.initState();
    final loader = document.getElementsByClassName('loading');
    if (loader.isNotEmpty) {
      loader.first.remove();
    }
  }

  Widget _buildNavMenu() => Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getNavMenuButton(pageIndex: 0, title: 'Home'),
          getNavMenuButton(pageIndex: 1, title: 'Projects'),
          getNavMenuButton(pageIndex: 2, title: 'Blog'),
        ],
      );

  Widget getNavMenuButton({
    required String title,
    required int pageIndex,
  }) {
    return Obx(() => Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: pageIndex == myPageController.currentPage.value
                ? Border(
                    bottom: BorderSide(
                      color: darkBackground1,
                      width: 2.4,
                      style: BorderStyle.solid,
                    ),
                  )
                : null,
          ),
          child: Text.rich(
            TextSpan(
              text: title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: pageIndex == myPageController.currentPage.value
                    ? FontWeight.w600
                    : FontWeight.w400,
                color: Colors.white,
                decorationColor: offWhite,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  myPageController.currentPage(pageIndex);
                  myPageController.isNavExpanded.toggle();
                },
            ),
          ),
        ));
  }

  Widget _getSelectedPageContent({int pageIndex = 0, bool isMobile = false}) {
    if (isMobile) {
      switch (pageIndex) {
        case 0:
          return HomeMobile();
        case 1:
          return ProjectPage(isMobile: true);

        case 2:
          return BlogPage(isMobile: true);

        default:
          return HomeMobile();
      }
    } else {
      switch (pageIndex) {
        case 0:
          return HomeDeskop();
        case 1:
          return ProjectPage();

        case 2:
          return BlogPage();

        default:
          return HomeMobile();
      }
    }
  }

  Widget _getMobileView() => ListView(
        shrinkWrap: true,
        controller: _controller,
        children: [
          //Mobile Header
          getMobileHeader(),
          //HOME
          Obx(() {
            _controller.animateTo(
              0.0,
              curve: Curves.easeOut,
              duration: const Duration(milliseconds: 300),
            );
            return _getSelectedPageContent(
                pageIndex: myPageController.currentPage.value, isMobile: true);
          }),
          //footer
          FooterWidget(),
        ],
      );

  Container getMobileHeader() {
    return Container(
      color: primaryColor,
      padding: EdgeInsets.all(0),
      child: Obx(() => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage(myImgUrl),
                    ),
                  ),
                  IconButton(
                    icon: Icon(myPageController.isNavExpanded.value
                        ? Icons.close
                        : Icons.menu),
                    iconSize: 40.0,
                    onPressed: () => myPageController.isNavExpanded.toggle(),
                  ),
                ],
              ),
              if (myPageController.isNavExpanded.value)
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
                  alignment: Alignment.topLeft,
                  child: _buildNavMenu(),
                ),
            ],
          )),
    );
  }

  Widget _getDesktopView() => ListView(
        shrinkWrap: true,
        controller: _controller,
        children: [
          //Desktop Header
          getDesktopHeader(),
          //HOME
          // getHomeDesktop(),
          Obx(() {
            _controller.animateTo(
              0.0,
              curve: Curves.easeOut,
              duration: const Duration(milliseconds: 300),
            );
            return _getSelectedPageContent(
                pageIndex: myPageController.currentPage.value);
          }),
          //footer
          FooterWidget(),
        ],
      );

  Container getDesktopHeader() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 18.0),
      color: primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 45.0,
              backgroundImage: NetworkImage(myImgUrl),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceAround,
            children: [
              getNavMenuButton(
                title: 'Home',
                pageIndex: 0,
              ),
              getNavMenuButton(
                title: 'Projects',
                pageIndex: 1,
              ),
              getNavMenuButton(
                title: 'Blog',
                pageIndex: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return _getDesktopView();
        } else {
          return _getMobileView();
        }
      }),
    );
  }
}
