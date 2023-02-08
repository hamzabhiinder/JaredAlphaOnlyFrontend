import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:jared/helper/colors.dart';
import 'package:jared/screens/home/Electronics.dart';

class CategoriesssScreen extends StatefulWidget {
  const CategoriesssScreen({super.key});

  @override
  State<CategoriesssScreen> createState() => _CategoriesssScreenState();
}

class _CategoriesssScreenState extends State<CategoriesssScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
          "Categories",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    child: Text(
                      "Lets Find!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      contBox(
                          txt: "Electronics",
                          img: 'assets/slicing/battery.png'),
                      contBox(
                          txt: "Fashion", img: 'assets/slicing/fashion.png'),
                      contBox(
                          txt: "Jewelery", img: 'assets/slicing/jewellry.png'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      contBox(
                          txt: "Mobile Phones",
                          img: 'assets/slicing/battery.png'),
                      contBox(txt: "Shose", img: 'assets/slicing/fashion.png'),
                      contBox(
                          txt: "Babies", img: 'assets/slicing/jewellry.png'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      contBox(
                          txt: "Electronics",
                          img: 'assets/slicing/battery.png'),
                      contBox(
                          txt: "Fashion", img: 'assets/slicing/fashion.png'),
                      contBox(
                          txt: "Jewelery", img: 'assets/slicing/jewellry.png'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      contBox(
                          txt: "Mobile Phones",
                          img: 'assets/slicing/battery.png'),
                      contBox(txt: "Shose", img: 'assets/slicing/fashion.png'),
                      contBox(
                          txt: "Babies", img: 'assets/slicing/jewellry.png'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  contBox({txt, img}) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Get.to(() => ElectronicsScreen(
              categoryname: txt,
            ));
        // if (txt == "Electronics") {
        //   Get.to(() => ElectronicsScreen(
        //         categoryname: txt,
        //       ));
        // }
        ;
      },
      child: Padding(
        padding: const EdgeInsets.all(5.5),
        child: Column(
          children: [
            Container(
              width: res_width * 0.35,
              height: res_height * 0.15,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                color: kprimaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(2, 1), // Shadow position
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  '$img',
                  // height: 10,
                  // width: 10,
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "$txt",
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
