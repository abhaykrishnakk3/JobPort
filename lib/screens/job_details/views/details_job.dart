import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_project_main/screens/widget/box_card.dart';

class JobDetails extends StatelessWidget {
  const JobDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                //  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: const NewBox(child: const Icon(Icons.arrow_back)))],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  const Text("Python Developer",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          child: Image.asset('assets/s1AjSxph_400x400.jpg')),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Company name",
                            style: TextStyle(
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Pune,maharashtra,india(Hybrid)",
                            style: TextStyle(
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 4,
                    indent: 0,
                    endIndent: 0,
                    color: Color.fromARGB(255, 216, 194, 194),
                    height: 50,
                  ),
                  const Text(
                    "Job Description",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "re are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, ",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                        fontSize: 16),
                  ),
                  const Divider(
                    thickness: 1,
                    indent: 0,
                    endIndent: 0,
                    color: Color.fromARGB(255, 216, 194, 194),
                    height: 50,
                  ),
                  const Text(
                    "About the job",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "re are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, ",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                height: MediaQuery.of(context).size.height*0.07,
                 width: MediaQuery.of(context).size.width*0.3,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.grey[200],
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Save",
                      style: TextStyle(
                        fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 83, 81, 214)),
                    )),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.07,
                 width: MediaQuery.of(context).size.width*0.3,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 45, 40, 185),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Applay",
                      style: TextStyle(
                        fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    )),
              )
            ])
          ],
        ),
      )),
    );
  }
}
