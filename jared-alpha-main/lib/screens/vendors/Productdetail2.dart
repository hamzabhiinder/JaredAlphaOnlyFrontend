import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jared/controller/bottomcontroller.dart';
import 'package:jared/helper/colors.dart';
import 'package:jared/screens/agreements/insuranceAndIndemnifications.dart';
import 'package:jared/screens/agreements/rentalAgreement.dart';
import 'package:jared/screens/agreements/termLength.dart';
import 'package:jared/screens/agreements/transportAndInstallationPolicy.dart';
import 'package:jared/screens/home/RentNow.dart';
import 'package:jared/screens/home/RenterView.dart';
import 'package:jared/screens/home/cart.dart';
import 'package:jared/screens/home/chat.dart';
import 'package:jared/screens/home/messages.dart';
import 'package:jared/screens/home/payrent.dart';
import 'package:jared/screens/home/reviews.dart';
import 'package:jared/screens/mainfolder/homemain.dart';
import 'package:jared/screens/vendors/EditProduct.dart';
import 'package:jared/screens/vendors/renterProfile.dart';
import 'package:jared/screens/vendors/vendorhome.dart';
import 'package:getwidget/getwidget.dart';

class ProductDetail2Screen extends StatefulWidget {
  const ProductDetail2Screen({Key? key}) : super(key: key);

  @override
  State<ProductDetail2Screen> createState() => _ProductDetail2ScreenState();
}

class _ProductDetail2ScreenState extends State<ProductDetail2Screen> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            )),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.all(13.0),
        //     child: Row(
        //       children: [
        //         ImageIcon(
        //           AssetImage(
        //             "assets/slicing/save.png",
        //           ),
        //           size: 20,
        //           color: Colors.black,
        //         ),
        //         SizedBox(
        //           width: res_width * 0.04,
        //         ),
        //         ImageIcon(
        //           AssetImage(
        //             "assets/slicing/share.png",
        //           ),
        //           size: 20,
        //           color: Colors.black,
        //         ),
        //         SizedBox(
        //           width: res_width * 0.04,
        //         ),
        //         ImageIcon(
        //           AssetImage(
        //             "assets/slicing/heart2.png",
        //           ),
        //           size: 20,
        //           color: Colors.black,
        //         ),
        //         SizedBox(
        //           width: res_width * 0.04,
        //         ),
        //         ImageIcon(
        //           AssetImage(
        //             "assets/slicing/cart.png",
        //           ),
        //           size: 20,
        //           color: Colors.black,
        //         ),
        //         SizedBox(
        //           width: res_width * 0.02,
        //         ),
        //       ],
        //     ),
        //   )
        // ],
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: res_width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(children: [
                      Container(
                        alignment: Alignment.center,
                        height: res_height * 0.2,
                        width: res_width * 0.9,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 0.5),
                        ),
                        child: ClipRRect(
                          child: Image.asset('assets/slicing/mob.png'),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: res_width * 0.2,
                          height: 25,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: kprimaryColor,
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                            onPressed: () {},
                            child: Center(
                                child: Text(
                              'Pickup',
                              style: TextStyle(color: Colors.black, fontSize: 11),
                            )),
                          ),
                        ),
                      ),
                      //ElevatedButton(onPressed: () {}, child: Text('data')),
                    ]),
                    SizedBox(
                      height: res_height * 0.03,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Apple 10.9-inch',
                                style: TextStyle(fontSize: 20),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(() => Reviews());
                                },
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(() => Reviews());
                                      },
                                      child: Icon(
                                        Icons.star,
                                        size: 16,
                                        color: kprimaryColor,
                                      ),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 16,
                                      color: kprimaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 16,
                                      color: kprimaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 16,
                                      color: kprimaryColor,
                                    ),
                                    Icon(
                                      Icons.star_border_outlined,
                                      size: 16,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Rental Price',
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                '\$50,556',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    GestureDetector(
                      // onTap: () {
                      //   Get.to(() => RenterScreen());
                      // },
                      child: Row(
                        children: [
                          Container(
                            height: res_height * 0.05,
                            width: res_width * 0.125,
                            child: Image.asset('assets/slicing/apple.png'),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Iphone Organization',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    GFAccordion(
                        // titleBorderRadius: BorderRadius.circular(10),
                        contentBackgroundColor: Colors.transparent,
                        expandedTitleBackgroundColor: Colors.transparent,
                        // margin: EdgeInsets.zero,
                        // contentPadding: EdgeInsets.symmetric(vertical: 15),
                        collapsedTitleBackgroundColor: Colors.transparent,
                        showAccordion: false,
                        titleChild: Row(

                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Image.asset(
                              //   "assets/images/Icon feather-settings.png",
                              //   scale: 5,
                              // ),
                              // SizedBox(
                              //   width: 28,
                              // ),
                              Text(
                                "Product Specifications",
                                style: TextStyle(fontSize: 14, color: Colors.black),
                              ),
                            ]),

                        // textStyle: TextStyle(color: Colors.amber, fontSize: 16),
                        collapsedIcon: Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Colors.black,
                        ),
                        expandedIcon: Icon(
                          Icons.arrow_drop_up_outlined,
                          color: Colors.black,
                        ),
                        contentChild: Column(
                          children: [
                            Container(
                              child: Text(
                                "Dimensions: 146.7 x 71.5 x 7.7 mm 5.78 x 2.81 x 0.30 in\n\nWeight:     174 g 6.14 oz\n\nBuild:      Glass front (Corning-made glass)\n\nSIM:        Nano-SIM",
                                style: TextStyle(color: Colors.grey, fontSize: 11),
                              ),
                            )
                          ],
                        )),

                    // ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    GFAccordion(
                      contentBackgroundColor: Colors.transparent,
                      expandedTitleBackgroundColor: Colors.transparent,
                      // margin: EdgeInsets.zero,
                      // contentPadding: EdgeInsets.symmetric(vertical: 15),
                      collapsedTitleBackgroundColor: Colors.transparent,
                      // collapsedTitleBackgroundColor: Color(0xffA0A1D6),
                      showAccordion: false,

                      titleChild: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        // Image.asset(
                        //   "assets/images/Icon feather-settings.png",
                        //   scale: 5,
                        // ),
                        // SizedBox(
                        //   width: 28,
                        // ),
                        Text(
                          "Service & Agreements",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ]),

                      // textStyle: TextStyle(color: Colors.amber, fontSize: 16),
                      collapsedIcon: Icon(
                        Icons.arrow_drop_down_outlined,
                        color: Colors.black,
                      ),

                      expandedIcon: Icon(
                        Icons.arrow_drop_up_outlined,
                        color: Colors.black,
                      ),
                      contentChild: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(() => RentalAgreement());
                            },
                            child: Container(
                              width: 389,
                              height: 50,
                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.circular(5),
                              //   color: Color(0xffD2D2F1),
                              // ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                  Text(
                                    "Rental Agreement",
                                    style: TextStyle(fontSize: 12, color: Colors.blue),
                                  ),
                                ]),
                              ),
                            ),
                          ),
                          Container(
                            width: 389,
                            height: 50,
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(5),
                            //   color: Color(0xffD2D2F1),
                            // ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(() => TermLength());
                                  },
                                  child: Text(
                                    "Term Length",
                                    style: TextStyle(fontSize: 12, color: Colors.blue),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          Container(
                            width: 389,
                            height: 50,
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(5),
                            //   color: Color(0xffD2D2F1),
                            // ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(() => InsuranceAndIndemnification());
                                  },
                                  child: Text(
                                    "Insurance & Indemnification",
                                    style: TextStyle(fontSize: 12, color: Colors.blue),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          Container(
                            width: 389,
                            height: 50,
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(5),
                            //   color: Color(0xffD2D2F1),
                            // ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(() => TransportAndInstallationPolicy());
                                  },
                                  child: Text(
                                    "Transport & Installation Policy",
                                    style: TextStyle(fontSize: 12, color: Colors.blue),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Text(
                    //       'Question about this products (3)',
                    //       style: TextStyle(fontSize: 13, color: Colors.grey),
                    //     ),
                    //     Text(
                    //       'View all',
                    //       style: TextStyle(fontSize: 13, color: Colors.grey),
                    //     )
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: 7,
                    // ),
                    // Row(
                    //   children: [
                    //     ImageIcon(
                    //       AssetImage('assets/slicing/questions.png'),
                    //     ),
                    //     SizedBox(
                    //       width: 10,
                    //     ),
                    //     Text(
                    //       'How soon can i get this products ?',
                    //       style: TextStyle(fontSize: 12.5, color: Colors.grey),
                    //     ),
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: 7,
                    // ),
                    // Row(
                    //   children: [
                    //     ImageIcon(
                    //       AssetImage('assets/slicing/questions.png'),
                    //     ),
                    //     SizedBox(
                    //       width: 10,
                    //     ),
                    //     Text(
                    //       'verv soon',
                    //       style: TextStyle(fontSize: 12.5, color: Colors.grey),
                    //     ),
                    //   ],
                    // ),
                    SizedBox(
                      height: res_height * 0.02,
                    ),
                    Container(
                      width: res_width * 0.9,
                      child: Text(
                        'Products Description',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: res_height * 0.01,
                    ),
                    Container(
                      width: res_width * 0.9,
                      child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and type-setting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 39,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
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
                                      height: 222,
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
                                                "Delete",
                                                style: TextStyle(fontFamily: "Inter, Bold", fontSize: 30, color: Colors.white),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                width: 250,
                                                child: Center(
                                                  child: Text(
                                                    "Are you sure you want to delete this item?",
                                                    style: TextStyle(fontFamily: "Inter, Regular", fontSize: 19, color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                              // 15.verticalSpace,
                                              // Container(
                                              //   width: 270.w,
                                              //   height: 50.h,
                                              //   child: Text(
                                              //     "You will be contacted by the Owner via direct message to confirm!",
                                              //     textAlign: TextAlign.center,
                                              //     style: TextStyle(
                                              //       fontFamily: "Inter, Regular",
                                              //       fontSize: 15.sp,
                                              //       color: Colors.white,
                                              //     ),
                                              //   ),
                                              // ),
                                              SizedBox(
                                                height: 18,
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 160,
                                                    height: 51,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.only(
                                                          bottomLeft: Radius.circular(10),
                                                          // bottomRight:
                                                          //     Radius.circular(10.r),
                                                        ),
                                                        color: Colors.white),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        Get.back();
                                                      },
                                                      child: Center(
                                                        child: Text(
                                                          "No",
                                                          style: TextStyle(fontFamily: "Inter, Regular", fontSize: 14, color: Colors.black),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 160,
                                                    height: 51,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.only(
                                                          // bottomLeft:
                                                          //     Radius.circular(10.r),
                                                          bottomRight: Radius.circular(10),
                                                        ),
                                                        color: Colors.white),
                                                    child: Center(
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          final bottomcontroller = Get.put(BottomController());
                                                          bottomcontroller.navBarChange(1);
                                                          Get.to(() => MainScreen());
                                                        },
                                                        child: Container(
                                                          child: Text(
                                                            "yes",
                                                            style: TextStyle(fontFamily: "Inter, Regular", fontSize: 14, color: Colors.black),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )
                                          // Container(
                                          //   width: 357.w,
                                          //   height: 59.h,
                                          //   decoration: BoxDecoration(
                                          //     borderRadius: BorderRadius.only(
                                          //       topLeft: Radius.circular(10.r),
                                          //       topRight: Radius.circular(10.r),
                                          //     ),
                                          //     gradient: LinearGradient(
                                          //       begin: Alignment.bottomRight,
                                          //       end: Alignment.bottomLeft,
                                          //       colors: [
                                          //         Color(0xff00006A),
                                          //         Color(0xff4B4BFF)
                                          //       ],
                                          //     ),
                                          //   ),
                                          //   child: Row(
                                          //     children: [
                                          //       SizedBox(
                                          //         width: 145.w,
                                          //       ),
                                          //       Text(
                                          //         "Note",
                                          //         style: TextStyle(
                                          //           fontSize: 16.sp,
                                          //           color: Colors.white,
                                          //         ),
                                          //       ),
                                          //       SizedBox(
                                          //         width: 110.w,
                                          //       ),
                                          //       GestureDetector(
                                          //         onTap: () {
                                          //           Get.back();
                                          //         },
                                          //         child: Icon(
                                          //           Icons.close,
                                          //           color: Colors.white,
                                          //           size: 25,
                                          //         ),
                                          //       ),
                                          //     ],
                                          //   ),
                                          // ),

                                          // SizedBox(
                                          //   height: 10.h,
                                          // ),
                                          // Padding(
                                          //   padding: const EdgeInsets.symmetric(
                                          //       horizontal: 20),
                                          //   child: Column(children: [
                                          //     Text(
                                          //       "This kind of sensitive information are used by our company just to verify users. Once users get verified such information will be allowed to terminate by users themselves from our system for protecting users privacy data from unethical act. Our slogan No privacy data meaning nothing to worry about leak, hack and crack...",
                                          //       textAlign: TextAlign.center,
                                          //       style: TextStyle(
                                          //           fontSize: 12.sp,
                                          //           color: Colors.black),
                                          //     ),
                                          //     SizedBox(
                                          //       height: 50.h,
                                          //     ),
                                          //     GestureDetector(
                                          //       onTap: () {
                                          //         Get.to(() => licensephotoupload());
                                          //       },
                                          //       child: Container(
                                          //         width: 250.w,
                                          //         height: 59.h,
                                          //         decoration: BoxDecoration(
                                          //           border: Border.all(
                                          //               color: Colors.white),
                                          //           borderRadius:
                                          //               BorderRadius.circular(10.r),
                                          //           color: Color(0xff00006A),
                                          //         ),
                                          //         child: Center(
                                          //           child: Text(
                                          //             "Continue",
                                          //             style: TextStyle(
                                          //                 color: Colors.white,
                                          //                 fontSize: 16.sp),
                                          //           ),
                                          //         ),
                                          //       ),
                                          //     ),
                                          //   ]),
                                          // )
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                        top: -20,
                                        // left: 100,
                                        child: Container(
                                            width: 90,
                                            height: 90,
                                            decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xffFEB038)),
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
                          height: 44,
                          width: 180,
                          child: Center(
                            child: Text(
                              'Delete',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ),
                          decoration:
                              BoxDecoration(color: Colors.white, border: Border.all(color: Colors.orange), borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => EditProductScreen());
                        },
                        child: Container(
                          height: 44,
                          width: 180,
                          child: Center(
                            child: Text(
                              'Edit Product',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ),
                          decoration: BoxDecoration(color: kprimaryColor, borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
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
        // Get.to(() => ProductDetail2Screen());
      },
      child: Container(
        width: res_width * 0.44,
        // height: res_height * 0.28,
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
                    GestureDetector(
                      child: Row(
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
                      ),
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
}
