import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jared/helper/colors.dart';
import 'package:jared/helper/global.dart';
import 'package:jared/screens/agreements/Aboutapp.dart';
import 'package:jared/screens/agreements/insuranceAndIndemnifications.dart';
import 'package:jared/screens/agreements/privacyPolicy.dart';
import 'package:jared/screens/agreements/rentalAgreement.dart';
import 'package:jared/screens/agreements/termLength.dart';
import 'package:jared/screens/agreements/termination.dart';
import 'package:jared/screens/agreements/termsAndConditions.dart';
import 'package:jared/screens/agreements/transportAndInstallationPolicy.dart';
import 'package:jared/screens/agreements/usagePolicyAndLimitations.dart';
import 'package:jared/screens/auth/login.dart';
import 'package:jared/screens/home/Messages(32).dart';
import 'package:jared/screens/home/MyOrders.dart';
import 'package:jared/screens/home/cart.dart';
import 'package:jared/screens/home/messages.dart';
import 'package:jared/screens/home/orderHistory.dart';
import 'package:jared/screens/home/setting.dart';
import 'package:jared/screens/mainfolder/firstmain.dart';
import 'package:jared/screens/profile/myprofile.dart';
import 'package:jared/screens/vendors/addproduct.dart';
import 'package:jared/screens/vendors/generatepromocode.dart';
import 'package:jared/screens/vendors/orderequestdetail.dart';
import 'package:jared/screens/vendors/orderrequest.dart';
import 'package:jared/screens/vendors/renterProfile.dart';
import 'package:jared/screens/vendors/transactionlist.dart';
import 'package:jared/screens/vendors/vendorhome.dart';

import '../../controller/bottomcontroller.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  // String userName = "";
  // String userEmail = "";
  // bool checkLogin = false;
  var shaka;

  @override
  initState() {
    super.initState();
  }

  final bottomctrl = Get.put(BottomController());

  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: res_width * 0.85,
        decoration: BoxDecoration(
            color: kprimaryColor,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: SingleChildScrollView(
            child: loginType == "vendor"
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: res_height * 0.04),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/slicing/1.png',
                              width: 80,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'James Adam',
                                  style: TextStyle(
                                      fontSize: 26, color: Colors.black),
                                ),
                                Text('Jamesadam@.com',
                                    style: TextStyle(
                                        fontFamily: '',
                                        fontSize: 15,
                                        color: Color(0xff331a08)))
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: res_height * 0.04),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 1;
                          });
                          if (bottomctrl.navigationBarIndexValue != 0) {
                            bottomctrl.navBarChange(0);
                          } else {
                            Get.back();
                          }
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 1
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.home_outlined,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Home",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 2;
                          });
                          Get.to(() => RenterProfile());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 2
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.person,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Profile",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 3;
                          });
                          Get.to(MessagesScreen());
                          // if (bottomctrl.navigationBarIndexValue != 3) {
                          //   bottomctrl.navBarChange(3);
                          // } else {
                          //   Get.back();
                          // }
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 3
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.chat,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Chat",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 4;
                          });
                          Get.to(OrderRequests());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 4
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.list_alt_rounded,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "My Orders List",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 5;
                          });
                          Get.to(TransactionListScreen());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 5
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.save_as,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Transaction List",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 10;
                          });
                          Get.to(() => Settings());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 10
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: GestureDetector(
                              onTap: () {
                                Get.to(Settings());
                              },
                              child: Container(
                                  width: res_width * 0.4,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.settings,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "Settings",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 19,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 12;
                          });
                          Get.to(() => PrivacyPolicy());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 12
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.list_alt,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Privacy Policy",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 13;
                          });
                          Get.to(() => TermsAndCondition());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 13
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.library_books,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Terms & Conditions",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 14;
                          });
                          Get.to(AboutAppScreen());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 14
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.app_registration,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "About App",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      // SizedBox(
                      //   height: res_height * 0.05,
                      // ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 15;
                          });
                          Get.to(TermLength());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 15
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.list_alt,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Term Length",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 16;
                          });
                          Get.to(RentalAgreement());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 16
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.list_alt,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Rental Agreement",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 17;
                          });
                          Get.to(usagePolicyAndLimitations());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 17
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.view_list_outlined,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Usage Policy & Limitations",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 18;
                          });
                          Get.to(InsuranceAndIndemnification());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 18
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.view_list_outlined,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Insurance & Indemnifications",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 19;
                          });
                          Get.to(TransportAndInstallationPolicy());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 19
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.view_list_outlined,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Transport & Installation Policy",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 20;
                          });
                          Get.to(AboutAppScreen());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 20
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.view_list_outlined,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Maintenance & Warraanties",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 21;
                          });
                          Get.to(Termination());
                        },
                        child: Container(
                          width: res_width * 0.7,
                          height: res_height * 0.065,
                          decoration: BoxDecoration(
                              color: shaka == 21
                                  ? Color(0xff331a08)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Container(
                            width: res_width * 0.4,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.view_list_outlined,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Termination",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 19, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(LoginScreen());
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.login_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Logout",
                                style: TextStyle(
                                    fontSize: 19, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: res_height * 0.04),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/slicing/1.png',
                              width: 80,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'James Adam',
                                  style: TextStyle(
                                      fontSize: 26, color: Colors.black),
                                ),
                                Text('Jamesadam@.com',
                                    style: TextStyle(
                                        fontFamily: '',
                                        fontSize: 15,
                                        color: Color(0xff331a08)))
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: res_height * 0.04),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 1;
                          });
                          if (bottomctrl.navigationBarIndexValue != 0) {
                            bottomctrl.navBarChange(0);
                          } else {
                            Get.back();
                          }
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 1
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.home_outlined,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Home",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 2;
                          });
                          Get.to(() => MyProfileScreen());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 2
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.person,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Profile",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 3;
                          });
                          Get.to(MessagesScreen());
                          // if (bottomctrl.navigationBarIndexValue != 3) {
                          //   bottomctrl.navBarChange(3);
                          // } else {
                          //   Get.back();
                          // }
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 3
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.chat,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Chat",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 4;
                          });
                          Get.to(MyOrdersScreen());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 4
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.list_alt_rounded,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "My Orders",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 5;
                          });
                          if (bottomctrl.navigationBarIndexValue != 1) {
                            bottomctrl.navBarChange(1);
                          } else {
                            Get.back();
                          }
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 5
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.save_as,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Saved Products",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),

                      SizedBox(
                        height: loginType == "vendor" ? 10 : 0,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 8;
                          });
                          Get.to(MyCart());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 8
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.shopping_cart,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "My Cart",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 9;
                          });
                          Get.to(MyOrdersScreen());
                          // if (bottomctrl.navigationBarIndexValue != 4) {
                          //   bottomctrl.navBarChange(4);
                          // } else {
                          //   Get.back();
                          // }
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 9
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.recycling,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Recorders",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 10;
                          });
                          Get.to(() => RentalAgreement());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 10
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: GestureDetector(
                              onTap: () {
                                if (bottomctrl.navigationBarIndexValue != 4) {
                                  bottomctrl.navBarChange(4);
                                } else {
                                  Get.back();
                                }
                              },
                              child: Container(
                                  width: res_width * 0.4,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.settings,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "Settings",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 19,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 12;
                          });
                          Get.to(() => PrivacyPolicy());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 12
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.list_alt,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Privacy Policy",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 13;
                          });
                          Get.to(() => TermsAndCondition());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 13
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.library_books,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Terms & Conditions",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 14;
                          });
                          Get.to(AboutAppScreen());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 14
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.app_registration,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "About App",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      // SizedBox(
                      //   height: res_height * 0.05,
                      // ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 15;
                          });
                          Get.to(TermLength());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 15
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.list_alt,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Term Length",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 16;
                          });
                          Get.to(RentalAgreement());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 16
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.list_alt,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Rental Agreement",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 17;
                          });
                          Get.to(usagePolicyAndLimitations());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 17
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.view_list_outlined,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Usage Policy & Limitations",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 18;
                          });
                          Get.to(InsuranceAndIndemnification());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 18
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.view_list_outlined,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Insurance & Indemnifications",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 19;
                          });
                          Get.to(TransportAndInstallationPolicy());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 19
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.view_list_outlined,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Transport & Installation Policy",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 20;
                          });
                          Get.to(AboutAppScreen());
                        },
                        child: Container(
                            width: res_width * 0.7,
                            height: res_height * 0.065,
                            decoration: BoxDecoration(
                                color: shaka == 20
                                    ? Color(0xff331a08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Container(
                                width: res_width * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.view_list_outlined,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Maintenance & Warraanties",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            shaka = 21;
                          });
                          Get.to(Termination());
                        },
                        child: Container(
                          width: res_width * 0.7,
                          height: res_height * 0.065,
                          decoration: BoxDecoration(
                              color: shaka == 21
                                  ? Color(0xff331a08)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Container(
                            width: res_width * 0.4,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.view_list_outlined,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Termination",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 19, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(LoginScreen());
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.login_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Logout",
                                style: TextStyle(
                                    fontSize: 19, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                    ],
                  )),
      ),
    );
  }
}
