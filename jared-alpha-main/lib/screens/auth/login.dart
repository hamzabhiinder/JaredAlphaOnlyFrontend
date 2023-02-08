import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jared/helper/colors.dart';
import 'package:jared/helper/global.dart';
import 'package:jared/screens/auth/Setprofile.dart';
import 'package:jared/screens/auth/forgot.dart';
import 'package:jared/screens/auth/register.dart';
import 'package:jared/screens/mainfolder/homemain.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final userEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/slicing/bg2.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: res_height * 0.175,
                ),
                Container(
                  width: res_width * 0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome Back!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      Row(
                        children: [
                          Text(
                            'Login below or ',
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 15),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => RegisterScreen());
                            },
                            child: Text(
                              'create an account',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 19,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: res_height * 0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email'),
                    SizedBox(
                      height: res_height * 0.01,
                    ),
                    Container(
                      width: res_width * 0.9,
                      child: TextFormField(
                        autocorrect: false,
                        controller: userEmailController,
                        validator: (text) {
                          if (text == null ||
                              text.isEmpty ||
                              !text.contains("@")) {
                            return 'Enter correct email';
                          }
                          return null;
                        },
                        style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: kprimaryColor, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: kprimaryColor, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: "Example@gmail.com",
                            fillColor: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: res_height * 0.015,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Password'),
                    SizedBox(
                      height: res_height * 0.01,
                    ),
                    Container(
                      width: res_width * 0.9,
                      child: TextFormField(
                        autocorrect: false,
                        obscureText: true,
                        style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: kprimaryColor, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: kprimaryColor, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: "*********",
                            fillColor: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: res_height * 0.015,
                ),
                Container(
                    width: res_width * 0.9,
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => ForgotScreen());
                      },
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text('Forgot Password?')),
                    )),
                SizedBox(
                  height: res_height * 0.015,
                ),
                GestureDetector(
                  onTap: () {
                    print(userEmailController.text.toString());
                    if (userEmailController.text.toString().toLowerCase() ==
                        "vendor") {
                      loginType = "vendor";
                    }
                    print(loginType);

                    Get.to(() => MainScreen());
                  },
                  child: 
                  Container(
                    height: res_height * 0.065,
                    width: res_width * 0.9,
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: kprimaryColor,
                        borderRadius: BorderRadius.circular(14)),
                  ),
                ),
                SizedBox(
                  height: res_height * 0.1,
                ),
                Text('Login With',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                SizedBox(
                  height: res_height * 0.02,
                ),
                Container(
                  width: res_width * 0.7,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => SetProfileScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: res_width * 0.15,
                            height: res_width * 0.15,
                            child: Image.asset('assets/slicing/fb.png')),
                        Container(
                            width: res_width * 0.15,
                            height: res_width * 0.15,
                            child: Image.asset('assets/slicing/aple.png')),
                        Container(
                            width: res_width * 0.15,
                            height: res_width * 0.15,
                            child: Image.asset('assets/slicing/google.png'))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
