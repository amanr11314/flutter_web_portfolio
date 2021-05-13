// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';
import 'package:test_web/model/project_model.dart';

class ProjectController extends GetxController {
  late List<ProjectModel> allProjects;

  @override
  void onInit() {
    super.onInit();
    allProjects = [
      ProjectModel(
          title: 'Sangeet',
          duration: 'March 2021',
          description:
              'Sangeet is an Android Music Player app built on MVVM pattern to play songs which are on local storage of user\'s device. Users can create playlist, get recently played songs suggestions and also get personalized recommendation for playing songs, mark favorite songs, and control behavior of song queue(repeat and shuffle). App can also play music in the background.',
          textPrimary: 'Download App',
          linkPrimary:
              'https://apt.izzysoft.de/fdroid/index/apk/com.projects.musicplayer',
          textSecondary: 'View Source',
          linkSecondary:
              'https://github.com/Chandigarh-University-students/Music-Player',
          iconUrl:
              'https://raw.githubusercontent.com/Chandigarh-University-students/Music-Player/master/app/src/main/res/mipmap-hdpi/ic_launcher_round.png'),
      ProjectModel(
        title: 'Xpers',
        duration: 'Jan 2021',
        description:
            'Expense Tracking App in which user can add/remove a expense item from list. He/She can also see the date of expense.',
        textPrimary: 'Live Project',
        linkPrimary: 'https://codepen.io/amanr11314/pen/KKgjPEj',
        textSecondary: 'View Source',
        linkSecondary: 'https://github.com/amanr11314/Xpers',
      ),
      ProjectModel(
          title: 'FoodRunner',
          duration: 'July 2020',
          description:
              'A Food Delivery Android App with various restaurants and multiple menu items in them. Users can mark their favorite restaurants and also track their order history. They can also sort restaurants by three parameters: rating, cost(high to low), cost(low to high).',
          textPrimary: 'Download App',
          linkPrimary:
              'https://github.com/amanr11314/FoodRunner/releases/download/v1.0/FoodRunner.apk',
          textSecondary: 'View Source',
          linkSecondary: 'https://github.com/amanr11314/FoodRunner',
          iconUrl:
              'https://raw.githubusercontent.com/amanr11314/FoodRunner/master/app/src/main/res/mipmap-hdpi/ic_launcher_round.png'),
      ProjectModel(
          title: 'Flash',
          duration: 'May 2019',
          description:
              'A firebase based group Chat App built using Flutter SDK. It is also available as web project. It uses firebase authentication for email and password sign-in and cloud firestore as database.',
          textPrimary: 'Live Project',
          linkPrimary: 'https://flash-chat.netlify.app/',
          textSecondary: 'View Source',
          linkSecondary: 'https://github.com/amanr11314/Flash',
          iconUrl:
              'https://raw.githubusercontent.com/amanr11314/Flash/master/android/app/src/main/res/mipmap-hdpi/ic_launcher.png'),
    ];
  }
}
