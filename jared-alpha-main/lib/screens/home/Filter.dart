import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jared/helper/colors.dart';
import 'package:get/get.dart';

import '../mainfolder/homemain.dart';

class FilterScreeen extends StatefulWidget {
  const FilterScreeen({super.key});

  @override
  State<FilterScreeen> createState() => _FilterScreeenState();
}

class _FilterScreeenState extends State<FilterScreeen> {
  double _value = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
        title: Text(
          'Filter',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                Text(
                  "Reset",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  child: Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 61,
                ),
                Container(
                  child: Text(
                    "Add Location",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Fields(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    "Set Radius",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          width: 371,
                          child: CupertinoSlider(
                            thumbColor: Colors.white,
                            activeColor: Colors.black,
                            min: 0.0,
                            max: 100.0,
                            value: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                        ),
                      ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "25m",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Text(
                      "500m",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    "Categories",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Fields(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    "Price range",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          width: 371,
                          child: CupertinoSlider(
                            thumbColor: Colors.white,
                            activeColor: Colors.black,
                            min: 0.0,
                            max: 100.0,
                            value: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                        ),
                      ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$1000",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Text(
                      "\$1000",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    width: 76,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0xff321A08),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Center(
                      child: Text(
                        "\$500",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    "Brands",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Brands(
                        "assets/slicing/Icon awesome-apple@3x.png",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Brands(
                        "assets/slicing/Icon awesome-android@3x.png",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Brands(
                        "assets/slicing/Icon awesome-google-play@3x.png",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Brands(
                        "assets/slicing/Icon awesome-google@3x.png",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Brands(
                        "assets/slicing/Icon awesome-google-wallet@3x.png",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Brands(
                        "assets/slicing/Icon awesome-apple@3x.png",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => MainScreen());
                    },
                    child: Container(
                      height: 58,
                      width: 380,
                      child: Center(
                        child: Text(
                          'Find',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: kprimaryColor,
                          borderRadius: BorderRadius.circular(14)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Fields() {
    return Container(
      child: TextFormField(
        autocorrect: false,
        // controller: userEmailController,
        // validator: (text) {
        //   if (text == null ||
        //       text.isEmpty ||
        //       !text.contains("@")) {
        //     return 'Enter correct email';
        //   }
        //   return null;
        // },
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
            hintText: "United State Of America",
            fillColor: Colors.white),
      ),
    );
  }

  Brands(
    img,
  ) {
    return Container(
      width: 71,
      height: 71,
      decoration: BoxDecoration(
          border: Border.all(color: kprimaryColor),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Image.asset(
        img,
        scale: 2.3,
      ),
    );
  }
}
