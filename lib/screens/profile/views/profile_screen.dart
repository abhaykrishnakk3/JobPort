import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_project_main/screens/profile/widgets/details_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        },icon: Icon(Icons.arrow_back,color: Colors.black,size: 30,),),
        elevation: 0,
        backgroundColor: Colors.grey[200],
      ),
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: double.infinity,
            child: Stack(children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                    //color: Color.fromARGB(255, 216, 213, 213),
                    //  color: Colors.blue.withOpacity(.3),
                    color: Colors.grey[200],
                    borderRadius:const BorderRadius.only(
                        bottomRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100))),
              ),
              Positioned(
                bottom: 0,
                left: 120,
                child: Container(
                  height: h * 0.2,
                  width: w * 0.4,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg'),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 180),
            child: GestureDetector(
                onTap: () {
                  Get.bottomSheet(
                    Container(
                        height: 150,
                        color: Color.fromARGB(255, 213, 222, 218),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.camera,
                              size: 50,
                              color: Color.fromARGB(255, 47, 222, 58),
                            ),
                            Icon(
                              Icons.image,
                              size: 50,
                              color: Color.fromARGB(255, 84, 196, 23),
                            ),
                          ],
                        )),
                    // barrierColor: Colors.red[50],
                    //isDismissible: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      // side: BorderSide(
                      //   width: 5,
                      //   color: Colors.white
                      // )
                    ),
                  );
                },
                child: Icon(
                  Icons.image,
                  color: Colors.yellow,
                  size: 40,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              "USERNAME",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[200]
                  // color: Colors.blue.withOpacity(.3),
                  ),
              child: Column(children: const [
                KeyValu(name: "Phone", value: "0498094999"),
                KeyValu(name: "Place", value: "US"),
                KeyValu(name: "Email", value: "abhay@gmail.com"),
              ]),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18),
            child: Text(
              "Education and Experience",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: DottedBorder(
              radius: Radius.circular(10),
              borderType: BorderType.RRect,
              strokeCap: StrokeCap.square,
              dashPattern: [20, 4],
              color: Colors.blue.shade400,
              strokeWidth: 1,
              child: Container(
                // margin: const EdgeInsets.only(left: 18, right: 18),
                height: h * 0.07,
                // width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children:const [
                   Text(
                    "Uplod File",
                    style:  TextStyle(
                        color: Color.fromARGB(255, 77, 66, 66),
                        fontSize: 23,
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
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18),
            child: const Text(
              "Please add your Resume",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: DottedBorder(
              radius:const Radius.circular(10),
              dashPattern: [20, 4],
              borderType: BorderType.RRect,
              strokeCap: StrokeCap.round,
              color: Colors.blue.shade400,
              strokeWidth: 1,
              child: Container(
                // margin: const EdgeInsets.only(left: 18, right: 18),
                height: h * 0.07,
                // width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children:const [
                   Text(
                    "Uplod File",
                    style:  TextStyle(
                        color: Color.fromARGB(255, 77, 66, 66),
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                   Icon(
                    Icons.upload_file,
                    color: Color.fromARGB(255, 146, 137, 137),
                    size: 36,
                  )
                ]),
              ),
            ),
          ),
         const SizedBox(height: 40,),
        ],
      ),
    ));
  }
}
