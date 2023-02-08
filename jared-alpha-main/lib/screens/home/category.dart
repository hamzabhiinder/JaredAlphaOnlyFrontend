import 'package:flutter/material.dart';
import 'package:jared/helper/colors.dart';

import 'package:get/get.dart';
import 'package:jared/screens/home/categoryproducts.dart';
// import 'package:jared/screens/home/profile/myprofile.dart';
import 'package:jared/screens/home/productlist.dart';
import 'package:jared/screens/profile/myprofile.dart';

import '../mainfolder/drawer.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _key,
      drawer: DrawerScreen(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Categories',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 19),
        ),
        leading: GestureDetector(
          onTap: () {
            _key.currentState!.openDrawer();
          },
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: GestureDetector(
              onTap: () {
                _key.currentState!.openDrawer();
              },
              child: Container(
                child: Image.asset('assets/slicing/hamburger.png'),
              ),
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(() => MyProfileScreen());
            },
            child: Padding(
              padding: const EdgeInsets.all(19.0),
              child: Container(
                child: Image.asset('assets/slicing/avatar.png'),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: res_width * 0.9,
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(
                      Icons.search_outlined,
                      color: Colors.grey,
                    ),
                    hintText: "Enter Text Results",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: kprimaryColor, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: kprimaryColor, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                ),
              ),
              // Container(
              //   width: res_width * 0.9,
              //   child: TextField(
              //     decoration: InputDecoration(
              //         enabledBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(15.0),
              //             borderSide:
              //                 BorderSide(color: kprimaryColor, width: 0.5)),
              //         filled: true,
              //         hintStyle: TextStyle(color: Colors.grey),
              //         suffixIcon: Icon(Icons.search_outlined),
              //         hintText: "Enter Text Results",
              //         fillColor: Colors.white),
              //   ),
              // ),
              SizedBox(
                height: res_height * 0.03,
              ),
              Container(
                width: res_width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Featured Categories',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: res_height * 0.035,
                          child: Image.asset('assets/slicing/line.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: res_height * 0.035,
                          child: Image.asset('assets/slicing/column.png'),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: res_height * 0.03,
              ),
              Container(
                width: res_width * 0.9,
                child: Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  children: [
                    contBox(
                        txt: "Electronics", img: 'assets/slicing/battery.png'),
                    contBox(txt: "Fashion", img: 'assets/slicing/fashion.png'),
                    contBox(
                        txt: "Jewelery", img: 'assets/slicing/jewellry.png'),
                    contBox(
                        txt: "Appliances", img: 'assets/slicing/appliance.png'),
                    contBox(
                        txt: "Mobile Phones",
                        img: 'assets/slicing/mobilephone.png'),
                    contBox(txt: "Shoes", img: 'assets/slicing/shoes.png'),
                    contBox(txt: "Babies", img: 'assets/slicing/babes.png'),
                    contBox(txt: "Sports", img: 'assets/slicing/sport.png'),
                  ],
                ),
              ),
            ],
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
        Get.to(() => CategoryProducts(
              categoryname: txt,
            ));
      },
      child: Column(
        children: [
          Container(
            width: res_width * 0.42,
            height: res_height * 0.2,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: res_width * 0.135,
                  child: Image.asset(
                    '$img',
                    // height: 10,
                    // width: 10,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            "$txt",
            style: TextStyle(fontSize: 17),
          )
        ],
      ),
    );
  }
}
