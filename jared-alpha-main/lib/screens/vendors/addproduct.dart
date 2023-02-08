import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jared/helper/colors.dart';
import 'package:jared/screens/vendors/addproduct2.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  bool switchnot = true;
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
          'General Information',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 19),
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
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.all(19.0),
        //     child: Container(
        //       child: Image.asset('assets/slicing/avatar.png'),
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
                  children: [
                    Row(
                      children: [
                        Text(
                          'Product Name',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: res_height * 0.01,
                    ),
                    Container(
                      child: Text(
                        'This information helps you and your customers identify the products on orders, documents and in the online store',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: res_height * 0.01,
                    ),
                    Container(
                      height: 50,
                      width: res_width * 0.9,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "eg : ipad",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: kprimaryColor, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: kprimaryColor, width: 1),
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
                    //             borderSide: BorderSide(
                    //                 color: kprimaryColor, width: 0.5)),
                    //         filled: true,
                    //         hintStyle: TextStyle(color: Colors.grey),
                    //         //suffixIcon: Icon(Icons.search_outlined),
                    //         hintText: "eg : ipad",
                    //         fillColor: Colors.white),
                    //   ),
                    // ),
                    SizedBox(
                      height: res_height * 0.01,
                    ),
                    Row(
                      children: [
                        Text(
                          'Add Photo or Video',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: res_height * 0.01,
                    ),
                    Container(
                      width: res_width * 0.9,
                      height: res_height * 0.2,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: kprimaryColor,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: res_width * 0.2,
                        height: res_height * 0.15,
                        // child: ImageIcon(
                        //   AssetImage('assets/slicing/upload-cloud.png'),
                        // ),
                        child: Icon(
                          Icons.cloud_upload_rounded,
                          size: 25,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: res_height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              tag(),
                              SizedBox(
                                width: res_width * 0.01,
                              ),
                              tag(),
                              SizedBox(
                                width: res_width * 0.01,
                              ),
                              tag(),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Negotiation',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                            Transform.scale(
                              scale: 0.6,
                              child: CupertinoSwitch(
                                activeColor: Color.fromARGB(255, 210, 210, 210),
                                trackColor: Color.fromARGB(255, 235, 235, 235),
                                thumbColor: switchnot
                                    ? Color.fromARGB(255, 173, 173, 173)
                                    : Color(0xff00ff01),
                                value: switchnot,
                                onChanged: (value) {
                                  setState(() {
                                    switchnot = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: res_height * 0.01,
                    ),
                    Row(
                      children: [
                        Text(
                          'Specs',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: res_height * 0.01,
                    ),
                    Container(
                      height: 50,
                      width: res_width * 0.9,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: kprimaryColor, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: kprimaryColor, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                      ),
                    ),
                    // Container(
                    //   width: res_width * 0.9,
                    //   height: res_height * 0.07,
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: kprimaryColor,
                    //       width: 0.5,
                    //     ),
                    //     borderRadius: BorderRadius.circular(15),
                    //   ),
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(12.0),
                    //     child: Text(
                    //       "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                    //       style: TextStyle(
                    //         color: Colors.grey,
                    //         fontSize: 11,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: res_height * 0.01,
                    ),
                    Row(
                      children: [
                        Text(
                          'Description',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: res_height * 0.01,
                    ),
                    Container(
                      height: 50,
                      width: res_width * 0.9,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: kprimaryColor, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: kprimaryColor, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                      ),
                    ),
                    // Container(
                    //   width: res_width * 0.9,
                    //   height: res_height * 0.11,
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: kprimaryColor,
                    //       width: 0.5,
                    //     ),
                    //     borderRadius: BorderRadius.circular(15),
                    //   ),
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(12.0),
                    //     child: Text(
                    //       "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                    //       style: TextStyle(
                    //         color: Colors.grey,
                    //         fontSize: 11,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: res_height * 0.01,
                    ),
                    Row(
                      children: [
                        Text(
                          'Rent Price',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: res_height * 0.01,
                    ),
                    Container(
                      height: 50,
                      width: res_width * 0.9,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Add Price',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: kprimaryColor, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: kprimaryColor, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                      ),
                    ),
                    // Container(
                    //   width: res_width * 0.9,
                    //   height: res_height * 0.05,
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: kprimaryColor,
                    //       width: 0.5,
                    //     ),
                    //     borderRadius: BorderRadius.circular(15),
                    //   ),
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(12.0),
                    //     child: Text(
                    //       "Add Price",
                    //       style: TextStyle(
                    //         color: Colors.grey,
                    //         fontSize: 11,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: res_height * 0.01,
                    ),
                    Row(
                      children: [
                        Text(
                          'Negotiation',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: res_height * 0.01,
                    ),
                    Container(
                      height: 50,
                      width: res_width * 0.9,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Amount',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: kprimaryColor, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: kprimaryColor, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                      ),
                    ),
                    // Container(
                    //   width: res_width * 0.9,
                    //   height: res_height * 0.05,
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: kprimaryColor,
                    //       width: 0.5,
                    //     ),
                    //     borderRadius: BorderRadius.circular(15),
                    //   ),
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(12.0),
                    //     child: Text(
                    //       "Enter Amount",
                    //       style: TextStyle(
                    //         color: Colors.grey,
                    //         fontSize: 11,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Instant Rent',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Transform.scale(
                          scale: 0.6,
                          child: CupertinoSwitch(
                            activeColor: Color.fromARGB(255, 210, 210, 210),
                            trackColor: Color.fromARGB(255, 235, 235, 235),
                            thumbColor: switchnot
                                ? Color.fromARGB(255, 173, 173, 173)
                                : Color(0xff00ff01),
                            value: switchnot,
                            onChanged: (value) {
                              setState(() {
                                switchnot = value;
                              });
                            },
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Messaging',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                            Transform.scale(
                              scale: 0.6,
                              child: CupertinoSwitch(
                                activeColor: Color.fromARGB(255, 210, 210, 210),
                                trackColor: Color.fromARGB(255, 235, 235, 235),
                                thumbColor: switchnot
                                    ? Color(0xff00ff01)
                                    : Color.fromARGB(255, 173, 173, 173),
                                // ? Color.fromARGB(255, 173, 173, 173)
                                // : Color(0xff00ff01),
                                value: switchnot,
                                onChanged: (value) {
                                  setState(() {
                                    switchnot = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: res_height * 0.01,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => AddProduct2Screen());
                      },
                      child: Container(
                        width: 398,
                        height: 58,
                        child: Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 19),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: kprimaryColor,
                            borderRadius: BorderRadius.circular(14)),
                      ),
                    ),
                    SizedBox(
                      height: res_height * 0.02,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  tag() {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return Container(
      width: res_width * 0.13,
      height: res_height * 0.03,
      decoration: BoxDecoration(
        color: kprimaryColor,
        border: Border.all(
          color: kprimaryColor,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          'TAG',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
