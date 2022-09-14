import 'package:flutter/material.dart';
import 'package:second_project_main/screens/login_or_signup/views/widget/button_login_or_signup.dart';

class LoginOrSignin extends StatelessWidget {
  const LoginOrSignin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: const DecorationImage(
                          image: AssetImage('assets/login_or_signup.jpg'))),
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.height * 0.3,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                const Text("Welcome!",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 39,
                ),
                const Text(
                  "We delivery water at array point of the Earth in 30 minutes",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color.fromARGB(255, 30, 25, 25)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
              const  ButtonLoginOrSignUp(name: "Log in"),
                const SizedBox(
                  height: 30,
                ),
             const   ButtonLoginOrSignUp(name: "Sign Up"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
              ]),
        ),
      ),
    );
  }
}
