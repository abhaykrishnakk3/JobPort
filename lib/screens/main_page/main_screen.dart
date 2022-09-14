import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_project_main/screens/applications/views/application_screen.dart';
import 'package:second_project_main/screens/home_screen.dart/views/home_screen.dart';
import 'package:second_project_main/screens/main_page/controller/main_page_contrller.dart';
import 'package:second_project_main/screens/notification/view/notification_screen.dart';
import 'package:second_project_main/screens/projects/view/project_screen.dart';

class MainPage extends StatelessWidget {
   MainPage({Key? key}) : super(key: key);

  final mainPageController = Get.put(MainPageController());

  List page =const [
    HomeScreen(),
    ProjectScreen(),
    NotificationScreen(),
    ApplicationScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: page[mainPageController.index.value],
          bottomNavigationBar: BottomNavigationBar(
           type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
              currentIndex: mainPageController.index.value,
              onTap: (index) {
                mainPageController.index.value = index;

              },
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.black,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(icon: Icon(Icons.production_quantity_limits), label: "Projects"),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Notification"),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Applications"),
                
              ]),
        ));
  }
}
