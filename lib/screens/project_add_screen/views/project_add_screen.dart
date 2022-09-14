import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectAddScreen extends StatelessWidget {
  const ProjectAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          )),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          physics:const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DottedBorder(
                radius: const Radius.circular(10),
                borderType: BorderType.RRect,
                strokeCap: StrokeCap.square,
                dashPattern: [20, 4],
                color: Colors.blue.shade400,
                strokeWidth: 1,
                child: Container(
                  // margin: const EdgeInsets.only(left: 18, right: 18),
                  height: MediaQuery.of(context).size.height * 0.3,
                  // width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Add Image",
                          style: TextStyle(
                              color: Color.fromARGB(255, 77, 66, 66),
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.upload_file_outlined,
                          color: Color.fromARGB(255, 146, 137, 137),
                          size: 36,
                        )
                      ]),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                  padding: const EdgeInsets.all(10),
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: const TextField(
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    decoration:  InputDecoration(
                      hintText: "Descriiption",
                      border: InputBorder.none,
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              Container(
                  padding: const EdgeInsets.all(10),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: const TextField(
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    decoration:  InputDecoration(
                      hintText: "GitHub Link",
                      border: InputBorder.none,
                    ),
                  )),
                  const SizedBox(height: 30,),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.07,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color.fromARGB(255, 244, 241, 241)),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Add",
                      style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        ),
      )),
    );
  }
}
