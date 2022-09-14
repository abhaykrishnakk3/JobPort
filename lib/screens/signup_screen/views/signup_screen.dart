import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_project_main/screens/signup_screen/controller/signup_controller.dart';
import 'package:second_project_main/screens/signup_screen/model/signup_model.dart';
import 'package:second_project_main/screens/widget/textfielddecoration.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final formkey = GlobalKey<FormState>();

  final signupController = Get.put(SignUpController());

  final fullnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final conformPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      Center(
                          child: Image.asset(
                        'assets/signup.jpg',
                        height: 100,
                        width: 300,
                      )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      const Text(
                        "SignUP",
                        style:  TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      TextFormField(
                        controller: fullnameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter the FullName";
                          }
                        },
                        decoration: textInputDecoration.copyWith(
                            label: const Text("FullName"),
                            prefixIcon: const Icon(Icons.lock)),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      TextFormField(
                        controller: emailController,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Enter the Email";
                          }
                        },
                        decoration: textInputDecoration.copyWith(
                            label: const Text("Email"),
                            prefixIcon: const Icon(Icons.lock)),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      TextFormField(
                        controller: passwordController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter the Password";
                          }
                        },
                        obscureText: true,
                        decoration: textInputDecoration.copyWith(
                            label: const Text("Password"),
                            prefixIcon: const Icon(Icons.lock)),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      TextFormField(
                        controller: conformPasswordController,
                        validator: (value) {

                          if(passwordController.text != conformPasswordController.text){
                             return "Password don't match";
                          }
                          if (value!.isEmpty) {
                            return "Enter the Conform Password";
                          }
                        },
                        obscureText: true,
                        decoration: textInputDecoration.copyWith(
                            label: const Text(" Conform Password"),
                            prefixIcon: const Icon(Icons.lock)),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 98, 127, 255)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ))),
                            onPressed: (){
                              final signup = SignUpModel(
                                  fullName: fullnameController.text.trim(),
                                  email: emailController.text.trim(),
                                  password: passwordController.text.trim(),
                                  role: "seeker");
                              signupController.signUp(signup, formkey);
                            },
                            child: const Text(
                              "SignUP",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      const Text(
                        "-------------------OR-------------------",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 226, 226, 226),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(39),
                                child: Image.asset(
                                  'assets/s1AjSxph_400x400.jpg',
                                  height: 30,
                                  width: 30,
                                )),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.04,
                            ),
                            const Text(
                              "Google SignIn",
                              style:  TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ))),
    );
  }
}
