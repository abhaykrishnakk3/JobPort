import 'package:flutter/material.dart';
import 'package:second_project_main/screens/applications/widgets/application_card.dart';

class ApplicationScreen extends StatelessWidget {
  const ApplicationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Applications",
            style: TextStyle(color: Colors.black),
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [ApplicationCard()],
        ),
      ),
    );
  }
}
