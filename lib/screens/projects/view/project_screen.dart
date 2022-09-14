import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_project_main/screens/project_add_screen/views/project_add_screen.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Projects",
          style: TextStyle(
              color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(ProjectAddScreen());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
