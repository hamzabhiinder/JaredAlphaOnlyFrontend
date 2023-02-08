import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jared/helper/colors.dart';
import 'package:jared/screens/home/OrderConfirmation.dart';
import 'package:jared/screens/home/TypeReviews.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  bool alllbool = true;
  bool creditbool = false;
  bool debitbool = false;
  var _selectedButton = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Orders",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            creditbool = false;
                            alllbool = true;
                            debitbool = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'All',
                              style: TextStyle(fontSize: 17, color: alllbool ? Colors.black : Colors.grey),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 120,
                              color: alllbool ? Colors.grey : Color(0xff707070),
                              height: alllbool ? 3 : 1,
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          setState(() {
                            alllbool = false;
                            creditbool = true;
                            debitbool = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'To Ship',
                              style: TextStyle(fontSize: 17, color: creditbool ? Colors.black : Colors.grey),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 120,
                              color: creditbool ? Colors.grey : Color(0xff707070),
                              height: creditbool ? 3 : 1,
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            creditbool = false;
                            alllbool = false;
                            debitbool = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'Revieved',
                              style: TextStyle(fontSize: 17, color: debitbool ? Colors.black : Colors.grey),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 120,
                              color: debitbool ? Colors.grey : Color(0xff707070),
                              height: debitbool ? 3 : 1,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                alllbool
                    ? Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Gesture1(),
                            Gesture2(),
                            Gesture2(),
                            Gesture1(),
                          ],
                        ),
                      )
                    : Container(),
                creditbool
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          toship(),
                          Toship2(),
                          Toship2(),
                          toship(),
                        ],
                      )
                    // ListView(
                    //   children: [
                    //     SizedBox(height: 15),
                    //     Container(
                    //       height: 20,
                    //       width: 20,
                    //       color: Colors.red,
                    //     )
                    //   ],
                    // ),

                    : Container(),
                debitbool
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Revievedd(),
                          Revievedd(),
                          Revievedd(),
                          Revievedd(),
                          Revievedd(),
                          SizedBox(
                            height: 40,
                          )
                        ],
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Revievedd() {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          width: 391,
          height: 195,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 120,
                      height: 119,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Image.asset("assets/slicing/Layer 4@3x.png"),
                    ),
                    Container(
                      height: 119,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 159,
                              child: Text(
                                "Apple 10.9-inch iPad Air Wi-Fi Cellular 64GB",
                                style: TextStyle(fontSize: 14),
                              )),
                          Text(
                            "Placed on Dec, 2022",
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Delivered",
                            style: TextStyle(fontSize: 14),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$ 15.59",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Text(
                                "Recieved",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 44,
                  width: 371,
                  child: Center(
                    child: Text(
                      'Reorder',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                  ),
                  decoration: BoxDecoration(color: kprimaryColor, borderRadius: BorderRadius.circular(5)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  toship() {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          width: 391,
          height: 195,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 120,
                      height: 119,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Image.asset("assets/slicing/Layer 4@3x.png"),
                    ),
                    Container(
                      height: 119,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 159,
                              child: Text(
                                "Apple 10.9-inch iPad Air Wi-Fi Cellular 64GB",
                                style: TextStyle(fontSize: 14),
                              )),
                          Text(
                            "Placed on Dec, 2022",
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Delivered",
                            style: TextStyle(fontSize: 14),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$ 15.59",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Text(
                                "Recieved",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 44,
                      width: 170,
                      child: Center(
                        child: Text(
                          'Type Review',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                      ),
                      decoration: BoxDecoration(color: kprimaryColor, borderRadius: BorderRadius.circular(5)),
                    ),
                    Container(
                      height: 44,
                      width: 170,
                      child: Center(
                        child: Text(
                          'Reorder',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                      ),
                      decoration: BoxDecoration(color: kprimaryColor, borderRadius: BorderRadius.circular(5)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Toship2() {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          width: 391,
          height: 195,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 120,
                      height: 119,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Image.asset("assets/slicing/Layer 4@3x.png"),
                    ),
                    Container(
                      height: 119,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 159,
                              child: Text(
                                "Apple 10.9-inch iPad Air Wi-Fi Cellular 64GB",
                                style: TextStyle(fontSize: 14),
                              )),
                          Text(
                            "Placed on Dec, 2022",
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Delivered",
                            style: TextStyle(fontSize: 14),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$ 15.59",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Text(
                                "Recieved",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 44,
                  width: 371,
                  child: Center(
                    child: Text(
                      'Reorder',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                  ),
                  decoration: BoxDecoration(color: kprimaryColor, borderRadius: BorderRadius.circular(5)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Gesture1() {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          width: 391,
          height: 195,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 120,
                      height: 119,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Image.asset("assets/slicing/Layer 4@3x.png"),
                    ),
                    Container(
                      height: 119,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 159,
                              child: Text(
                                "Apple 10.9-inch iPad Air Wi-Fi Cellular 64GB",
                                style: TextStyle(fontSize: 14),
                              )),
                          Text(
                            "Placed on Dec, 2022",
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Delivered",
                            style: TextStyle(fontSize: 14),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$ 15.59",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Text(
                                "Recieved",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => TypeReviewsScreen());
                        },
                        child: Container(
                          height: 44,
                          child: Center(
                            child: Text(
                              'Type Review',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                            ),
                          ),
                          decoration: BoxDecoration(color: kprimaryColor, borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => OrderConfirmationScreen());
                        },
                        child: Container(
                          height: 44,
                          child: Center(
                            child: Text(
                              'Reorder',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                            ),
                          ),
                          decoration: BoxDecoration(color: kprimaryColor, borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Gesture2() {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          width: 391,
          height: 195,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 120,
                      height: 119,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Image.asset("assets/slicing/Layer 4@3x.png"),
                    ),
                    Container(
                      height: 119,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 159,
                              child: Text(
                                "Apple 10.9-inch iPad Air Wi-Fi Cellular 64GB",
                                style: TextStyle(fontSize: 14),
                              )),
                          Text(
                            "Placed on Dec, 2022",
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Delivered",
                            style: TextStyle(fontSize: 14),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$ 15.59",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Text(
                                "Recieved",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 44,
                  width: 371,
                  child: Center(
                    child: Text(
                      'Reorder',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                  ),
                  decoration: BoxDecoration(color: kprimaryColor, borderRadius: BorderRadius.circular(5)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
