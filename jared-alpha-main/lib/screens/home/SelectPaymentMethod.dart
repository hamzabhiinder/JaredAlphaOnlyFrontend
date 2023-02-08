import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jared/helper/colors.dart';
import 'package:jared/screens/home/home.dart';
import 'package:jared/screens/mainfolder/homemain.dart';

import '../../controller/bottomcontroller.dart';
import 'SelectPaymentMethodTow.dart';

class SelectPaymentMethodScreen extends StatefulWidget {
  const SelectPaymentMethodScreen({super.key});

  @override
  State<SelectPaymentMethodScreen> createState() =>
      _SelectPaymentMethodScreenState();
}

class _SelectPaymentMethodScreenState extends State<SelectPaymentMethodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          child: Text(
            "Select Payment Method",
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(() => SelectPaymentMethodTowScreen());
            },
            child: Container(
              child: Icon(
                Icons.add_circle_outline,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Image.asset("assets/slicing/Layer 7@3x.png"),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 387,
                  height: 67,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xff321A08),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 45,
                        height: 15,
                        child: Image.asset("assets/slicing/visa@3x.png"),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "**** **** **** 5967",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            "Expires on 09/26",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 12),
                          ),
                        ],
                      ),
                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange,
                        ),
                        child: Image.asset(
                          "assets/slicing/Path 71@3x.png",
                          scale: 3,
                        ),
                      ),
                    ],
                  ),
                ),
                Conts("**** **** **** 5967", "Expires on 09/26",
                    "assets/slicing/Path 91@3x.png"),
                Conts("**** **** **** 5967", "Expires on 09/26",
                    "assets/slicing/apple-pay@3x.png"),
                SizedBox(
                  height: 37,
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        backgroundColor: Color(0xff000000B8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: EdgeInsets.all(0),
                        actionsPadding: EdgeInsets.all(0),
                        actions: [
                          Stack(
                            clipBehavior: Clip.none,
                            alignment: AlignmentDirectional.center,
                            children: [
                              Container(
                                width: 320,
                                height: 291,
                                decoration: BoxDecoration(
                                    // border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffFEB038)),
                                child: ListView(
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(
                                          height: 67,
                                        ),
                                        Text(
                                          "Congratulations",
                                          style: TextStyle(
                                              fontFamily: "Inter, Bold",
                                              fontSize: 30,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Your Order Has Been Received",
                                          style: TextStyle(
                                              fontFamily: "Inter, Regular",
                                              fontSize: 19,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Container(
                                          width: 270,
                                          height: 50,
                                          child: Text(
                                            "You will be contacted by the Owner via direct message to confirm!",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: "Inter, Regular",
                                              fontSize: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            final bottomcontroller =
                                                Get.put(BottomController());
                                            bottomcontroller.navBarChange(0);
                                            Get.to(() => MainScreen());
                                          },
                                          child: Container(
                                            width: 357,
                                            height: 65,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                                color: Colors.white),
                                            child: Center(
                                              child: Text(
                                                "Go Back To Home",
                                                style: TextStyle(
                                                    fontFamily:
                                                        "Inter, Regular",
                                                    fontSize: 20,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                  top: -20,
                                  // left: 100,
                                  child: Container(
                                      width: 90,
                                      height: 90,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffFEB038)),
                                      child: Center(
                                          child: Image.asset(
                                        "assets/slicing/smile@3x.png",
                                        scale: 5,
                                      ))))
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  child: Container(
                    height: 58,
                    width: 390,
                    child: Center(
                      child: Text(
                        'Payment Confirm',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: kprimaryColor,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Conts(txt1, txt2, Img) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          width: 387,
          height: 67,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color(0xff321A08),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Container(
                  width: 45,
                  height: 15,
                  child: Image.asset(
                    Img,
                  ),
                ),
              ),
              SizedBox(
                width: 60,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    txt1,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    txt2,
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
                  ),
                ],
              ),
              // Container(
              //   width: 16,
              //   height: 16,
              //   decoration: BoxDecoration(
              //     shape: BoxShape.circle,
              //     color: Colors.orange,
              //   ),
              //   child: Image.asset("assets/slicing/Path 71@3x.png"),
              // )
            ],
          ),
        ),
      ],
    );
  }
}
