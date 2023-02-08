import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jared/helper/colors.dart';
import 'package:jared/screens/agreements/rentalAgreement.dart';
import 'package:jared/screens/home/writereview.dart';

class Reviews extends StatefulWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
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
          'Reviews',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 19),
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Container(
              child: Image.asset('assets/slicing/arrow.png'),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: res_height * 0.05,
              ),
              Text(
                '4.0',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => Reviews());
                    },
                    child: Icon(
                      Icons.star,
                      size: 18,
                      color: kprimaryColor,
                    ),
                  ),
                  Icon(
                    Icons.star,
                    size: 18,
                    color: kprimaryColor,
                  ),
                  Icon(
                    Icons.star,
                    size: 18,
                    color: kprimaryColor,
                  ),
                  Icon(
                    Icons.star,
                    size: 18,
                    color: kprimaryColor,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    size: 18,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                height: res_height * 0.005,
              ),
              Text('Based on 450 reviews'),
              SizedBox(
                height: res_height * 0.03,
              ),
              Container(
                width: res_width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Excellent'),
                    Row(
                      children: [
                        Container(
                            height: res_height * 0.007,
                            width: res_width * 0.5,
                            decoration: BoxDecoration(
                                color: Color(0xff01af00),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12)),
                                border: Border(left: BorderSide(width: 12)))),
                        Container(
                          height: res_height * 0.007,
                          width: res_width * 0.12,
                          decoration: BoxDecoration(
                              color: Color(0xffd2d2d2),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(12)),
                              border: Border(left: BorderSide(width: 12))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: res_height * 0.02),
              Container(
                width: res_width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Good'),
                    Row(
                      children: [
                        Container(
                            height: res_height * 0.007,
                            width: res_width * 0.43,
                            decoration: BoxDecoration(
                                color: Color(0xff98e01d),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12)),
                                border: Border(left: BorderSide(width: 12)))),
                        Container(
                          height: res_height * 0.007,
                          width: res_width * 0.19,
                          decoration: BoxDecoration(
                              color: Color(0xffd2d2d2),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(12)),
                              border: Border(left: BorderSide(width: 12))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: res_height * 0.02),
              Container(
                width: res_width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Average'),
                    Row(
                      children: [
                        Container(
                            height: res_height * 0.007,
                            width: res_width * 0.33,
                            decoration: BoxDecoration(
                                color: Color(0xfffff023),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12)),
                                border: Border(
                                  left: BorderSide(width: 12),
                                ))),
                        Container(
                          height: res_height * 0.007,
                          width: res_width * 0.29,
                          decoration: BoxDecoration(
                              color: Color(0xffd2d2d2),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(12)),
                              border: Border(left: BorderSide(width: 12))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: res_height * 0.02),
              Container(
                width: res_width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Below Average'),
                    Row(
                      children: [
                        Container(
                            height: res_height * 0.007,
                            width: res_width * 0.23,
                            decoration: BoxDecoration(
                                color: Color(0xfff36523),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12)),
                                border: Border(left: BorderSide(width: 12)))),
                        Container(
                          height: res_height * 0.007,
                          width: res_width * 0.39,
                          decoration: BoxDecoration(
                              color: Color(0xffd2d2d2),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(12)),
                              border: Border(left: BorderSide(width: 12))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: res_height * 0.02),
              Container(
                width: res_width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Poor'),
                    Row(
                      children: [
                        Container(
                            height: res_height * 0.007,
                            width: res_width * 0.13,
                            decoration: BoxDecoration(
                                color: Color(0xfffe0000),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12)),
                                border: Border(left: BorderSide(width: 12)))),
                        Container(
                          height: res_height * 0.007,
                          width: res_width * 0.49,
                          decoration: BoxDecoration(
                              color: Color(0xffd2d2d2),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(12)),
                              border: Border(left: BorderSide(width: 12))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: res_height * 0.04),
              card(),
              SizedBox(height: res_height * 0.005),
              card(),
              SizedBox(height: res_height * 0.03),
              GestureDetector(
                onTap: () {
                  Get.to(() => WriteReview());
                },
                child: Container(
                  height: res_height * 0.06,
                  width: res_width * 0.6,
                  child: Center(
                    child: Text(
                      'Write Review',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: kprimaryColor,
                      borderRadius: BorderRadius.circular(14)),
                ),
              ),
              SizedBox(height: res_height * 0.03),
            ],
          ),
        ),
      ),
    );
  }

  card() {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return Container(
      // height: res_height * 0.15,
      width: res_width * 0.9,
      // width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          SizedBox(
            height: res_height * 0.15,
          ),
          Container(
            width: res_width * 0.2,
            child: Image.asset(
                'assets/slicing/handsome-businessman-suit-glasses-cross-arms-chest-look.png'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: res_width * 0.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Jackson',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      width: res_width * 0.31,
                    ),
                    Text(
                      '1 day ago',
                      style: TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                    SizedBox(
                      height: res_height * 0.01,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 13,
                    color: kprimaryColor,
                  ),
                  Icon(
                    Icons.star,
                    size: 13,
                    color: kprimaryColor,
                  ),
                  Icon(
                    Icons.star,
                    size: 13,
                    color: kprimaryColor,
                  ),
                  Icon(
                    Icons.star,
                    size: 13,
                    color: kprimaryColor,
                  ),
                  Icon(
                    Icons.star,
                    size: 13,
                    color: kprimaryColor,
                  ),
                ],
              ),
              SizedBox(
                height: res_height * 0.001,
              ),
              Container(
                width: res_width * 0.7,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pretium augue id quam pretium dignissim. Donec aliquam ipsum id metus ornare convallis. Quisque imperdiet nec lacus a dapibus.  ',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
