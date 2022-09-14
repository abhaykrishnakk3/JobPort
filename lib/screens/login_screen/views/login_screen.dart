import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_project_main/screens/main_page/main_screen.dart';
import 'package:second_project_main/screens/signup_screen/views/signup_screen.dart';
import 'package:second_project_main/screens/widget/textfielddecoration.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: SafeArea(
              child: Form(
            key: formkey,
            child: Column(
              children: [
                Image.asset('assets/login.jpg'),
                const Text(
                  "LogIn",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter the Email";
                    }
                  },
                  decoration: textInputDecoration.copyWith(
                      label: const Text("Email"),
                      prefixIcon: const Icon(Icons.email)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                TextFormField(
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
              
     
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 98, 127, 255)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ))),
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          Get.off(MainPage());
                        }
                      },
                      child: const Text(
                        "Log In",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )
                      ),
                      
                ),
                  SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text(
                "-------------------OR-------------------",
                style:  TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: double.infinity,
               decoration: BoxDecoration(color: const Color.fromARGB(255, 226, 226, 226),
               borderRadius: BorderRadius.circular(20),
               
               ),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
             
                ClipRRect(
                  borderRadius: BorderRadius.circular(39),
                  child: Image.asset('assets/s1AjSxph_400x400.jpg',height: 30,width: 30,)),
                   SizedBox(width: MediaQuery.of(context).size.width*0.04,),
                  const Text("Google SignIn",style: const TextStyle(fontSize: 16),)
               ],),
              ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont have an account?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color.fromARGB(255, 131, 128, 128)),),
                    TextButton(onPressed: (){
                      Get.to(SignUpScreen());
                    }, child: const Text("Signup"))
                  ],

                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
