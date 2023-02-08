import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jared/helper/colors.dart';
import 'package:jared/screens/auth/Setprofile.dart';
import 'package:jared/screens/auth/login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool onlinepay = false;
  bool cod = false;
  final termscontroller = Get.put(TermsController());

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
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                          'Create account!',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        Row(
                          children: [
                            Text(
                              'Enter your account details below or ',
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => LoginScreen());
                              },
                              child: Text(
                                'log in',
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
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            onlinepay = false;
                            // cod = false;
                          });
                        },
                        child: Container(
                          height: 19,
                          width: 19,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, border: Border.all(color: onlinepay == false ? Color(0xff303030) : Colors.black, width: 3)),
                          child: Icon(
                            Icons.circle_rounded,
                            color: onlinepay == false ? Color(0xff303030) : Colors.white,
                            size: 13,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "User",
                        style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: "Inter, Regular"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            onlinepay = true;
                            // cod = true;
                          });
                        },
                        child: Container(
                          height: 19,
                          width: 19,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, border: Border.all(color: onlinepay == true ? Color(0xff303030) : Colors.black, width: 3)),
                          child: Icon(
                            Icons.circle_rounded,
                            color: onlinepay == true ? Color(0xff303030) : Colors.white,
                            size: 13,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Vender",
                        style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: "Inter, Regular"),
                      ),
                    ],
                  ),

                  // Row(
                  //   children: [
                  //     Icon(Icons.circle_notifications_outlined),
                  //     SizedBox(
                  //       width: res_width * 0.01,
                  //     ),
                  //     Container(
                  //       child: Text("User"),
                  //     ),
                  //     SizedBox(
                  //       width: res_width * 0.05,
                  //     ),
                  //     Icon(Icons.circle_notifications_outlined),
                  //     SizedBox(
                  //       width: res_width * 0.01,
                  //     ),
                  //     Container(
                  //       child: Text("Vender"),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    height: res_height * 0.05,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name'),
                      SizedBox(
                        height: res_height * 0.01,
                      ),
                      Container(
                        width: res_width * 0.9,
                        child: TextFormField(
                          autocorrect: false,
                          // controller: userEmailController,
                          validator: (text) {
                            if (text == null || text.isEmpty || !text.contains("@")) {
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
                                borderSide: const BorderSide(color: kprimaryColor, width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(color: kprimaryColor, width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.grey),
                              hintText: "Username",
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
                      Text('Email'),
                      SizedBox(
                        height: res_height * 0.01,
                      ),
                      Container(
                        width: res_width * 0.9,
                        child: TextFormField(
                          autocorrect: false,
                          // controller: userEmailController,
                          validator: (text) {
                            if (text == null || text.isEmpty || !text.contains("@")) {
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
                                borderSide: const BorderSide(color: kprimaryColor, width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(color: kprimaryColor, width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(15)),
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
                          // controller: userEmailController,
                          validator: (text) {
                            if (text == null || text.isEmpty || !text.contains("@")) {
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
                                borderSide: const BorderSide(color: kprimaryColor, width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(color: kprimaryColor, width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(15)),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Retype Password'),
                      SizedBox(
                        height: res_height * 0.01,
                      ),
                      Container(
                        width: res_width * 0.9,
                        child: TextFormField(
                          autocorrect: false,
                          obscureText: true,
                          // controller: userEmailController,
                          validator: (text) {
                            if (text == null || text.isEmpty || !text.contains("@")) {
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
                                borderSide: const BorderSide(color: kprimaryColor, width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(color: kprimaryColor, width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(15)),
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
                  Obx(() => CheckboxListTile(
                        title: Text("I agree to the Terms of Services and Privacy Policy", style: TextStyle(fontSize: 17)),
                        value: termscontroller.termsValue.value,
                        activeColor: kprimaryColor,
                        onChanged: (newValue) {
                          if (termscontroller.termsValue == true) {
                            termscontroller.chanegValue(false);
                          } else {
                            termscontroller.chanegValue(true);
                          }
                        },
                        controlAffinity: ListTileControlAffinity.leading, //  <-- leading Checkbox
                      )),
                  SizedBox(
                    height: res_height * 0.015,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => SetProfileScreen());
                    },
                    child: Container(
                      height: res_height * 0.065,
                      width: res_width * 0.9,
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      decoration: BoxDecoration(color: kprimaryColor, borderRadius: BorderRadius.circular(14)),
                    ),
                  ),
                  SizedBox(
                    height: res_height * 0.08,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TermsController extends GetxController {
  RxBool termsValue = false.obs;
  void chanegValue(data) {
    termsValue.value = data;
    update();
  }
}
