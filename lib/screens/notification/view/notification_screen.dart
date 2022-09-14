import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_project_main/screens/profile/views/profile_screen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 239, 250),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 10,top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            
            const Text(
              "Notifications",
              style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          const BorderRadius.only(topLeft: const Radius.circular(40))),
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                      itemBuilder: (ctx, index) {
                        return ListTile(
                          leading: Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg'),fit: BoxFit.cover)),
                          ),
                          title: const Text("hdhdh"),
                          subtitle: const Text("9 hours ago"),
                        );
                      },
                      separatorBuilder: (ctx, index) {
                        return const Divider();
                      },
                      itemCount: 30),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
