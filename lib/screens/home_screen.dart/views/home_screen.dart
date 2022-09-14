import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_project_main/screens/home_screen.dart/views/widgets/card_home.dart';
import 'package:second_project_main/screens/home_screen.dart/views/widgets/home_card.dart';
import 'package:second_project_main/screens/home_screen.dart/views/widgets/search_card.dart';
import 'package:second_project_main/screens/profile/views/profile_screen.dart';

class HomeScreen extends StatelessWidget {  
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: const Color.fromARGB(255, 219, 219, 219),
     backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(const ProfileScreen());
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
            height: 2,
          )
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          SearchField(),
          Expanded(
            flex: 4,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 11,
                itemBuilder: (context, index) {
                  return const CardHome();
                }),
          ),
        ],
      )),
    );
  }
}
