import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jared/helper/colors.dart';

import 'SelectPaymentMethod.dart';
import 'ShippingAddress.dart';

class OrderConfirmationScreen extends StatefulWidget {
  const OrderConfirmationScreen({super.key});

  @override
  State<OrderConfirmationScreen> createState() =>
      _OrderConfirmationScreenState();
}

class _OrderConfirmationScreenState extends State<OrderConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order Confirmation",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Contbox(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 390,
                  height: 133,
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
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        5,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Text(
                                "User Name",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 300,
                              child: Text(
                                "Address : Lorem ipsum dolor sit amet consectetur adipiscing elit cras, condimentum nec purus dictumst consequat taciti City, Code, Cell.",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(() => ShippingAddressScreen());
                              },
                              child: Container(
                                child: Text(
                                  "Change",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 170,
                ),
                subs("Sub Total", "\$25.00"),
                subs("Sub Total", "\$25.00"),
                subs("Sub Total", "\$25.00"),
                subs("Sub Total", "\$25.00"),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => SelectPaymentMethodScreen());
                  },
                  child: Container(
                    height: 58,
                    width: 371,
                    child: Center(
                      child: Text(
                        'Paynow',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: kprimaryColor,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Contbox() {
    return Column(
      children: [
        Container(
          width: 391,
          height: 169,
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
              mainAxisAlignment: MainAxisAlignment.center,
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
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 7,000",
                            style: TextStyle(fontSize: 14),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: kprimaryColor,
                              ),
                              Icon(
                                Icons.star,
                                color: kprimaryColor,
                              ),
                              Icon(
                                Icons.star,
                                color: kprimaryColor,
                              ),
                              Icon(
                                Icons.star,
                                color: kprimaryColor,
                              ),
                              Icon(
                                Icons.star,
                              ),
                              // Text(
                              //   "\$ 15.59",
                              //   style: TextStyle(
                              //       fontSize: 20,
                              //       fontWeight: FontWeight.bold),
                              // ),

                              Text(
                                "(2.5k Reviews)",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 19,
                                height: 19,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Center(
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "6",
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 19,
                                height: 19,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Center(
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: [
                //     Container(
                //       height: 44,
                //       width: 170,
                //       child: Center(
                //         child: Text(
                //           'Type Review',
                //           style: TextStyle(
                //               fontWeight: FontWeight.bold, fontSize: 19),
                //         ),
                //       ),
                //       decoration: BoxDecoration(
                //           color: kprimaryColor,
                //           borderRadius: BorderRadius.circular(5)),
                //     ),
                //     Container(
                //       height: 44,
                //       width: 170,
                //       child: Center(
                //         child: Text(
                //           'Reorder',
                //           style: TextStyle(
                //               fontWeight: FontWeight.bold, fontSize: 19),
                //         ),
                //       ),
                //       decoration: BoxDecoration(
                //           color: kprimaryColor,
                //           borderRadius: BorderRadius.circular(5)),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  subs(
    txt,
    txt2,
  ) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              txt,
            ),
            Text(
              txt2,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 399,
          height: 1,
          color: Colors.grey,
        )
      ],
    );
  }
}
