import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jared/helper/colors.dart';

class OrderRequestDetail extends StatefulWidget {
  const OrderRequestDetail({Key? key}) : super(key: key);

  @override
  State<OrderRequestDetail> createState() => _OrderRequestDetailState();
}

class _OrderRequestDetailState extends State<OrderRequestDetail> {
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
          'Order Request',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
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
                    Container(
                      height: 50,
                      width: res_width * 0.9,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.grey),
                          suffixIcon:
                              Icon(Icons.search_outlined, color: Colors.grey),
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
                    //         suffixIcon: Icon(Icons.search_outlined),
                    //         hintText: "Search",
                    //         fillColor: Colors.white),
                    //   ),
                    // ),
                    itmBox(
                        img: 'assets/slicing/Layer 7.png',
                        dx: 'Price: \$ 9000',
                        rv: '(2.9k Revews)',
                        tx: 'Apple 10.9-inch iPad Air Wi-Fi Cellular 64GB0',
                        rt: '4.9'),
                  ],
                ),
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
        // Get.to(() => ProductDetailScreen());
      },
      child: Container(
        width: res_width * 0.9,
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
                // width: res_width * 0.8,
                // decoration: BoxDecoration(color: Colors.white),
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
                      style: TextStyle(fontSize: 14.5),
                    ),

                    SizedBox(
                      height: res_height * 0.01,
                    ),
                    Center(
                      child: Text(
                        '$dx',
                        style: TextStyle(fontSize: 11, color: Colors.grey),
                      ),
                    ),
                    //   Row(
                    //     children: [
                    //       Icon(
                    //         Icons.star,
                    //         size: 11,
                    //         color: kprimaryColor,
                    //       ),
                    //       Icon(
                    //         Icons.star,
                    //         size: 11,
                    //         color: kprimaryColor,
                    //       ),
                    //       Icon(
                    //         Icons.star,
                    //         size: 11,
                    //         color: kprimaryColor,
                    //       ),
                    //       Icon(
                    //         Icons.star,
                    //         size: 11,
                    //         color: kprimaryColor,
                    //       ),
                    //       Icon(Icons.star, size: 11),
                    //       Text(
                    //         '$rt ',
                    //         style: TextStyle(fontSize: 11),
                    //       ),
                    //       Text(
                    //         '$rv',
                    //         style: TextStyle(
                    //           fontSize: 9,
                    //           color: Colors.grey,
                    //         ),
                    //       ),
                    //     ],
                    //   )
                    SizedBox(
                      height: res_height * 0.005,
                    ),
                    Center(
                      child: Text(
                        'Quantity : 5',
                        style: TextStyle(fontSize: 11, color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: res_height * 0.005,
                    ),
                    Center(
                      child: Text(
                        'Start 10 June to End 20 June',
                        style: TextStyle(fontSize: 11, color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: res_height * 0.01,
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Approved',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: res_width * 0.01,
                        ),
                        Icon(
                          Icons.check_circle,
                          size: 35,
                          color: Color.fromARGB(255, 135, 216, 138),
                        ),
                        SizedBox(
                          width: res_width * 0.01,
                        ),
                        Text(
                          'Cancel',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: res_width * 0.01,
                        ),
                        Icon(
                          Icons.cancel_rounded,
                          size: 35,
                          color: Colors.grey,
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
