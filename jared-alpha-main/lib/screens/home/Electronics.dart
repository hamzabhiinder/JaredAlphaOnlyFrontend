import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:jared/screens/auth/ProductDetail.dart';
import 'package:jared/screens/home/Electronics2.dart';
import 'package:jared/screens/home/Favourites.dart';

class ElectronicsScreen extends StatefulWidget {
  const ElectronicsScreen({super.key, required categoryname});

  @override
  State<ElectronicsScreen> createState() => _ElectronicsScreenState();
}

class _ElectronicsScreenState extends State<ElectronicsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
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
                  height: 20,
                ),
                Container(
                  child: Text(
                    "Electronics",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 400,
                  height: 1,
                  color: Colors.grey.withOpacity(0.3),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => Electronics2());
                      },
                      child: Container(
                        child: Text(
                          "Lorem ispum",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 400,
                  height: 1,
                  color: Colors.grey.withOpacity(0.3),
                ),
                Loremispum(),
                Loremispum(),
                Loremispum(),
                Loremispum(),
                Loremispum(),
                Loremispum(),
                Loremispum(),
                Loremispum(),
                Loremispum(),
                Loremispum(),
                Loremispum(),
                Loremispum(),
                Loremispum(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Loremispum() {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          width: 400,
          height: 1,
          color: Colors.grey.withOpacity(0.3),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(
                "Lorem ispum",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              child: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 400,
          height: 1,
          color: Colors.grey.withOpacity(0.3),
        ),
      ],
    );
  }
}
