import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:neostore/app/modules/home/components/widgets/customTextField.dart';

import '../components/widgets/customButton.dart';
import '../components/widgets/customText.dart';
import '../controllers/login_contoller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/images/background.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "NeoSTORE",
                        size: 35,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      CustomTextField(
                        labelText: "Username",
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      CustomTextField(
                        obscureText: true,
                        labelText: "Password",
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      CustomButton(
                        text: "LOGIN",
                        backgroundColor: Colors.white,
                        textColor: Colors.red,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        child: CustomText(
                          text: "Forgot Password?",
                          size: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: CustomText(
                          text: "DON'T HAVE AN ACCOUNT?",
                          size: 13,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: GestureDetector(
                          child: Container(
                            color: Colors.red[900],
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
