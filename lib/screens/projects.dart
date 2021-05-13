import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_web/components/heading_content_tile.dart';
import 'package:test_web/components/primary_button.dart';
import 'package:test_web/components/secondary_button.dart';
import 'package:test_web/constants.dart';
import 'package:test_web/controller/project_controller.dart';

import 'package:url_launcher/url_launcher.dart';

class ProjectPage extends StatelessWidget {
  ProjectPage({
    this.isMobile = false,
  });

  final bool isMobile;
  final ProjectController _projectController = Get.put(ProjectController());

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
                    ' Projects',
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
        Column(
          children: List.generate(
            _projectController.allProjects.length,
            (index) {
              var project = _projectController.allProjects[index];
              return HeadingContentTile(
                title: project.title,
                duration: project.duration,
                content: project.description,
                isMobile: isMobile,
                iconUrlString: project.iconUrl,
                btnPrimary: getPrimaryButton(
                  isMobile: isMobile,
                  title: project.textPrimary,
                  onPressed: () {
                    launch(project.linkPrimary);
                  },
                ),
                btnSecondary: getSecondaryButton(
                  isMobile: isMobile,
                  title: project.textSecondary,
                  onPressed: () {
                    launch(project.linkSecondary);
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
