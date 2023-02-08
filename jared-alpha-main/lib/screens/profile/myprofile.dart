import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jared/controller/bottomcontroller.dart';
import 'package:jared/helper/colors.dart';
import 'package:jared/screens/auth/ProductDetail.dart';
import 'package:jared/screens/home/Favourites.dart';
import 'package:jared/screens/home/MyOrders.dart';
import 'package:jared/screens/home/TrackMyOrders.dart';
import 'package:jared/screens/home/orderHistory.dart';
import 'package:jared/screens/mainfolder/homemain.dart';
// import 'package:jared/screens/home/profile/editprofile.dart';
import 'package:jared/screens/profile/editprofile.dart';

import '../home/FollowingStores.dart';
import '../home/ShippingAddress.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'My Profile',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 19),
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(19.0),
            child: GestureDetector(
              onTap: () {
                Get.to(() => EditProfile());
              },
              child: Container(
                child: Image.asset('assets/slicing/Group 63@3x.png'),
              ),
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: res_width * 0.9,
                  child: Column(
                    children: [
                      SizedBox(
                        height: res_height * 0.02,
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 400,
                            height: 136,
                            decoration: BoxDecoration(),
                            child: Image.asset("assets/slicing/Rectangle 546@3x.png"),
                          ),
                          Positioned(
                            left: 15,
                            bottom: -20,
                            child: Container(
                              child: CircleAvatar(radius: 40, child: Image.asset("assets/slicing/Ellipse 67@3x.png")),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: res_height * 0.04,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jackson",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Verified User",
                                style: TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "1024 Reservation | 278 For Rents",
                                style: TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        alignment: WrapAlignment.start,
                        runSpacing: 20,
                        spacing: 5,
                        children: [
                          Wraper(
                            "assets/slicing/Path 180@3x.png",
                            "Wish List",
                            () {
                              final bottomcontroller = Get.put(BottomController());
                              bottomcontroller.navBarChange(1);
                              Get.to(() => MainScreen());
                            },
                          ),
                          Wraper(
                            "assets/slicing/Group 352@3x.png",
                            "Following",
                            () {
                              Get.to(() => FollowingStoresScreen());
                              ;
                            },
                          ),
                          Wraper(
                            "assets/slicing/Group 353@3x.png",
                            "My Order",
                            () {
                              Get.to(() => MyOrdersScreen());
                            },
                          ),
                          Wraper(
                            "assets/slicing/Path 163@3x.png",
                            "Payment ",
                            () {
                              // Get.toNamed("/TermsAndConditionsScreen");
                            },
                          ),
                          Wraper(
                            "assets/slicing/Path 165@3x.png",
                            "Sphipping",
                            () {
                              Get.to(() => ShippingAddressScreen());
                            },
                          ),
                          Wraper(
                            "assets/slicing/Group 353@3x.png",
                            "Tracking",
                            () {
                              Get.to(() => TrackMyOrdersScreen());
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: res_height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              onTap:
                              () {
                                // Get.to(() => RecorderScreen());
                              };
                            },
                            child: GestureDetector(
                              onTap: () {
                                Get.to(() => OrderHistoryScreen());
                              },
                              child: Container(
                                height: res_height * 0.04,
                                width: res_width * 0.42,
                                child: Center(
                                  child: Text(
                                    'My Recent Orrders',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(color: kprimaryColor, borderRadius: BorderRadius.circular(8)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: res_width * 0.02,
                          ),
                          Container(
                            height: res_height * 0.04,
                            width: res_width * 0.42,
                            child: Center(
                              child: Text(
                                'Recieve Orders',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey),
                              ),
                            ),
                            decoration: BoxDecoration(
                                // color: kprimaryColor,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  width: 0.6,
                                  color: kprimaryColor,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: res_height * 0.02,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => ProductDetailScreen());
                        },
                        child: Container(
                          child: GestureDetector(
                            onTap: () {
                              Get.to(() => ProductDetailScreen());
                            },
                            child: Wrap(
                              spacing: 5,
                              runSpacing: 8,
                              children: [
                                itmBox(
                                    img: 'assets/slicing/Layer 4@3x.png',
                                    dx: '\$ 7000',
                                    rv: '(2.9k Reveiws)',
                                    tx: 'Apple 10.9-inch iPad Air Wi-Fi Cellular 64GB0',
                                    rt: '4.9'),
                                itmBox(
                                    img: 'assets/slicing/Layer 4@3x.png',
                                    dx: '\$ 9000',
                                    rv: '(2.9k Reveiws)',
                                    tx: 'Apple 10.9-inch iPad Air Wi-Fi Cellular 64GB0',
                                    rt: '4.9'),

                                // itmBox(
                                //     img: 'assets/slicing/h.jpg',
                                //     dx: '\$ 9000',
                                //     rv: '(2.9k Reveiws)',
                                //     tx: 'Apple 10.9-inch iPad Air Wi-Fi Cellular 64GB0',
                                //     rt: '4.9'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  itmBox({img, tx, dx, rt, rv}) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Get.to(() => ProductDetailScreen());
      },
      child: Container(
        width: res_width * 0.442,
        // height: res_height * 0.35,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 244, 244, 244),
          borderRadius: BorderRadius.circular(10),
        ),
        // child: Padding(
        //   padding: const EdgeInsets.only(
        //       bottom: 120, left: 10, right: 10, top: 10),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              Container(
                height: res_height * 0.2,
                decoration: BoxDecoration(),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  child: Image.asset(
                    '$img',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: res_height * 0.005,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$tx',
                      style: TextStyle(fontSize: 11),
                    ),
                    SizedBox(
                      height: res_height * 0.006,
                    ),
                    Text(
                      '$dx',
                      style: TextStyle(fontSize: 11),
                      textAlign: TextAlign.left,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 11,
                          color: kprimaryColor,
                        ),
                        Icon(
                          Icons.star,
                          size: 11,
                          color: kprimaryColor,
                        ),
                        Icon(
                          Icons.star,
                          size: 11,
                          color: kprimaryColor,
                        ),
                        Icon(
                          Icons.star,
                          size: 11,
                          color: kprimaryColor,
                        ),
                        Icon(Icons.star, size: 11),
                        Text(
                          '$rt ',
                          style: TextStyle(fontSize: 11),
                        ),
                        Text(
                          '$rv',
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Wraper(
    img,
    txt,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 88,
        height: 84,
        decoration: BoxDecoration(color: Color(0xff321A08), borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              img,
              scale: 3,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              txt,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
