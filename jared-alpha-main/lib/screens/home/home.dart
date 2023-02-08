import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jared/helper/colors.dart';
import 'package:jared/screens/auth/ProductDetail.dart';
import 'package:jared/screens/home/Categoriesss.dart';
import 'package:jared/screens/home/Electronics.dart';
import 'package:jared/screens/home/Filter.dart';
import 'package:jared/screens/home/categoryproducts.dart';
import 'package:jared/screens/home/productlist.dart';
// import 'package:jared/screens/home/profile/myprofile.dart';
import 'package:jared/screens/mainfolder/drawer.dart';
import 'package:jared/screens/profile/myprofile.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var fromdate;
  var todate;

  DateTime selectedDate = DateTime.now();
  DateTime selectedDate1 = DateTime.now();

  Future<void> _selectDate1(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate1 = picked;
      });
    }
  }

  var myFormat = DateFormat('MM/dd/yyyy');
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked =
        await showDatePicker(context: context, initialDate: selectedDate, firstDate: DateTime(2015, 8), lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage("assets/slicing/bg2.jpg"),
          //   fit: BoxFit.cover,
          // ),
          ),
      child: Scaffold(
        // backgroundColor: Colors.transparent,key: _key,
        key: _key,

        drawer: DrawerScreen(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Home',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 19),
          ),
          leading: GestureDetector(
            onTap: () {
              _key.currentState!.openDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: Container(
                child: Image.asset('assets/slicing/hamburger.png'),
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    Container(
                      width: res_width * 0.8,
                      child: TextFormField(
                        // autocorrect: false,
                        // controller: userEmailController,
                        // validator: (text) {
                        //   if (text == null || text.isEmpty || !text.contains("@")) {
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
                            hintText: "Example@gmail.com",
                            fillColor: Colors.white),
                      ),
                    ),
                    // Container(
                    //   width: res_width * 0.8,
                    //   child: TextField(
                    //     decoration: InputDecoration(
                    //         enabledBorder: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(15.0), borderSide: BorderSide(color: kprimaryColor, width: 0.9)),
                    //         filled: true,
                    //         hintStyle: TextStyle(color: Colors.grey),
                    //         suffixIcon: Icon(Icons.search_outlined),
                    //         hintText: 'Search...',
                    //         fillColor: Colors.white),
                    //     //  Icon(Icons.search_outlined),
                    //   ),
                    // ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => FilterScreeen());
                      },
                      child: Container(
                        width: 57,
                        height: 58,
                        decoration: BoxDecoration(
                          color: Color(0xffFEB038),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Image.asset(
                          "assets/slicing/Icon material-filter-list@3x.png",
                          scale: 3,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: res_height * 0.015,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  //width: res_width * 0.01,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Date From : ',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _selectDate(context);
                              fromdate = myFormat.format(selectedDate);
                            },
                            child: Container(
                              width: res_width * 0.225,
                              decoration: BoxDecoration(
                                // color: Colors.orange,
                                border: Border.all(color: kprimaryColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Center(
                                  child: Text(
                                    myFormat.format(selectedDate),
                                    style: TextStyle(fontSize: 11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: res_width * 0.02,
                      ),
                      Row(
                        children: [
                          Text('To : ',
                              style: TextStyle(
                                fontSize: 13,
                              )),
                          GestureDetector(
                            onTap: () {
                              _selectDate1(context);
                              todate = myFormat.format(selectedDate1);
                            },
                            child: Container(
                              width: res_width * 0.225,
                              decoration: BoxDecoration(
                                // color: Colors.orange,
                                border: Border.all(color: Colors.orange),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Center(
                                  child: Text(
                                    myFormat.format(selectedDate1),
                                    style: TextStyle(fontSize: 11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: res_height * 0.03,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: [
                //     Container(
                //       child: Text(
                //         "Top Rated",
                //         style: TextStyle(color: Colors.grey),
                //       ),
                //     ),
                //     Container(
                //       child: Text(
                //         "Newest",
                //         style: TextStyle(color: Colors.grey),
                //       ),
                //     ),
                //     Container(
                //       child: Text(
                //         "Near me",
                //         style: TextStyle(color: Colors.grey),
                //       ),
                //     ),
                //     Container(
                //       child: Text(
                //         "Recommended",
                //         style: TextStyle(color: Colors.grey),
                //       ),
                //     ),
                //   ],
                // ),

                // SizedBox(
                //   height: res_height * 0.05,
                // ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          'Lets Find!',
                          style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => CategoriesssScreen());
                        },
                        child: Container(
                          child: Text("See All"),
                        ),
                      ),
                    ],
                  ),
                ),
                Wrap(
                  spacing: 3,
                  runSpacing: 5,
                  children: [
                    contBox(txt: "Electronics", img: 'assets/slicing/battery.png'),
                    contBox(txt: "Fashion", img: 'assets/slicing/fashion.png'),
                    contBox(txt: "Jewelery", img: 'assets/slicing/jewellry.png'),
                    contBox(txt: "Appliances", img: 'assets/slicing/appliance.png'),
                    contBox(txt: "Mobile Phones", img: 'assets/slicing/mobilephone.png'),
                    contBox(txt: "Shoes", img: 'assets/slicing/shoes.png'),
                    contBox(txt: "Babies", img: 'assets/slicing/babes.png'),
                    contBox(txt: "Sports", img: 'assets/slicing/sport.png'),
                  ],
                ),
                SizedBox(
                  height: res_height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Featured Items!',
                          style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      // Container(child: Icon(Icons.menu)),
                      // Container(child: Icon(Icons.grid_view)),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        itmBox(
                            img: 'assets/slicing/h.jpg',
                            dx: '\$ 7000',
                            rv: '(2.9k Revews)',
                            tx: 'Apple 10.9-inch iPad Air Wi-Fi Cellular 64GB0',
                            rt: '4.9'),
                        itmBox(
                            img: 'assets/slicing/h.jpg',
                            dx: '\$ 9000',
                            rv: '(2.9k Revews)',
                            tx: 'Apple 10.9-inch iPad Air Wi-Fi Cellular 64GB0',
                            rt: '4.9'),
                        itmBox(
                            img: 'assets/slicing/h.jpg',
                            dx: '\$ 9000',
                            rv: '(2.9k Revews)',
                            tx: 'Apple 10.9-inch iPad Air Wi-Fi Cellular 64GB0',
                            rt: '4.9'),
                        itmBox(
                            img: 'assets/slicing/h.jpg',
                            dx: '\$ 9000',
                            rv: '(2.9k Revews)',
                            tx: 'Apple 10.9-inch iPad Air Wi-Fi Cellular 64GB0',
                            rt: '4.9'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
                )
                // Container(
                //   width: res_width * 0.4,
                //   height: res_height * 0.2,
                //   decoration: BoxDecoration(
                //     color: Color.fromARGB(255, 244, 244, 244),
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   // child: Padding(
                //   //   padding: const EdgeInsets.only(
                //   //       bottom: 120, left: 10, right: 10, top: 10),
                //   child: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Column(
                //       children: [
                //         Container(
                //           decoration: BoxDecoration(),
                //           child: ClipRRect(
                //             borderRadius: BorderRadius.all(
                //               Radius.circular(10),
                //             ),
                //             child: Image.asset(
                //               'assets/slicing/shaka.jpg',
                //               fit: BoxFit.fill,
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           height: res_height * 0.005,
                //         ),
                //         Container(
                //           child: Column(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Text(
                //                 'Apple 10.9-inch iPad Air Wi-Fi Cellular 64GB0',
                //                 style: TextStyle(fontSize: 9),
                //               ),
                //               SizedBox(
                //                 height: res_height * 0.006,
                //               ),
                //               Text(
                //                 '\$ 7000 ',
                //                 style: TextStyle(fontSize: 9),
                //                 textAlign: TextAlign.left,
                //               ),
                //               Row(
                //                 children: [
                //                   Icon(
                //                     Icons.star,
                //                     size: 12,
                //                     color: kprimaryColor,
                //                   ),
                //                   Icon(
                //                     Icons.star,
                //                     size: 12,
                //                     color: kprimaryColor,
                //                   ),
                //                   Icon(
                //                     Icons.star,
                //                     size: 12,
                //                     color: kprimaryColor,
                //                   ),
                //                   Icon(
                //                     Icons.star,
                //                     size: 12,
                //                     color: kprimaryColor,
                //                   ),
                //                   Icon(Icons.star, size: 12),
                //                   Text(
                //                     '4.9',
                //                     style: TextStyle(fontSize: 9),
                //                   ),
                //                   Text(
                //                     '(2.5k Reviews)',
                //                     style: TextStyle(fontSize: 7.5),
                //                   ),
                //                 ],
                //               )
                //             ],
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // )
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
              width: res_width * 0.2,
              height: res_height * 0.1,
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
              style: TextStyle(fontSize: 11),
            )
          ],
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
}
