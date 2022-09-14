import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_project_main/screens/job_details/views/details_job.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18,right: 18,top: 10),
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.grey[200],
             // color: const Color.fromARGB(255, 225, 239, 250),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 15,
                    offset: const Offset(5, 5)),
                const BoxShadow(
                    color: Colors.white, blurRadius: 15, offset: Offset(5, 5))
              ]),

          // padding:const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                            image: AssetImage('assets/s1AjSxph_400x400.jpg'))),
                  ),
                  const Text(
                    '7 july',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:const [
                   Text(
                    "UX designer",
                    style:  TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                   Text(
                    "10-20 lack",
                    style:  TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Text(
                "Experience : 6",
                style:  TextStyle(
                fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              // const Text(
              //   "Shot Note ",
              //   style:
              //        TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              // ),
              // const Text(
              //     "rem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specime....."),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.01,
              // ),
              
              GestureDetector(
                onTap: (){
                  Get.to(const JobDetails());
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: const Color.fromARGB(255, 155, 167, 177)),
                  child: const Center(
                      child:  Text(
                    "Details",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  )),
                ),
              )
            ],
          )),
    );
  }
}
