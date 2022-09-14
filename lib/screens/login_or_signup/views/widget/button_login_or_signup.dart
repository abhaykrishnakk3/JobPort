import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_project_main/screens/login_screen/views/login_screen.dart';
import 'package:second_project_main/screens/signup_screen/views/signup_screen.dart';

class ButtonLoginOrSignUp extends StatelessWidget {
  final String name;
  const ButtonLoginOrSignUp({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: name == "Log in"?
                              MaterialStateProperty.all(const Color.fromARGB(255, 240, 236, 236)):MaterialStateProperty.all(Colors.blue),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ))),
                      onPressed: () {
                        if(name == 'Log in'){
                          Get.off( LoginScreen());
                        }else{
                          Get.off(SignUpScreen());
                        }
                      },
                      child:  Text(
                        name,
                        style:name == "Log in"?const TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                            fontWeight: FontWeight.bold):const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )),
                );
  }
}