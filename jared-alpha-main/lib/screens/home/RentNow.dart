import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:jared/helper/colors.dart';
import 'package:jared/screens/home/SelectPaymentMethod.dart';
import 'package:jared/screens/home/chat.dart';
import 'package:photo_view/photo_view.dart';

class RentnowScreen extends StatefulWidget {
  const RentnowScreen({super.key});

  @override
  State<RentnowScreen> createState() => _RentnowScreenState();
}

class _RentnowScreenState extends State<RentnowScreen> {
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

  bool onlinepay = false;
  bool cod = false;
  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Container(
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                width: 391,
                height: 223,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(width: 1, color: Colors.black.withOpacity(0.11))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 90,
                            height: 135,
                            child: Image.asset(
                              "assets/slicing/Layer 4@3x.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: 128,
                            height: 170,
                            child: Image.asset(
                              "assets/slicing/Layer 4@3x.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: 90,
                            height: 135,
                            child: Image.asset(
                              "assets/slicing/Layer 4@3x.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Apple 10.9-inch",
                    style: TextStyle(fontSize: 28, color: Colors.black, fontFamily: "Inter, Regular"),
                  ),
                  RatingBar.builder(
                    itemSize: 14,
                    unratedColor: Colors.grey.withOpacity(0.5),
                    initialRating: 1,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star_purple500_outlined,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rental Price",
                    style: TextStyle(fontSize: 20, color: Colors.black, fontFamily: "Inter, Regular"),
                  ),
                  Text(
                    "\$50,556",
                    style: TextStyle(fontSize: 25, color: Colors.black, fontFamily: "Inter, ExtraBold"),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                // margin: EdgeInsets.only(left: 7),
                //width: res_width * 0.01,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rent Start',
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _selectDate(context);
                            fromdate = myFormat.format(selectedDate);
                          },
                          child: Container(
                            width: res_width * 0.425,
                            height: res_height * 0.06,
                            decoration: BoxDecoration(
                              // color: Colors.orange,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    myFormat.format(selectedDate),
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  Icon(
                                    Icons.calendar_month,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   width: res_width * 0.38,
                    // ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Original Return',
                            style: TextStyle(
                              fontSize: 19,
                            )),
                        GestureDetector(
                          onTap: () {
                            _selectDate1(context);
                            todate = myFormat.format(selectedDate1);
                          },
                          child: Container(
                            width: res_width * 0.425,
                            height: res_height * 0.06,
                            decoration: BoxDecoration(
                              // color: Colors.orange,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    myFormat.format(selectedDate1),
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  Icon(
                                    Icons.calendar_month,
                                  )
                                ],
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
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 365,
                        height: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            width: 1,
                            color: Color(0xffFEB038),
                          ),
                        ),
                        child: TextFormField(
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            disabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10, top: 5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(
                      "Email",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 365,
                      height: 58,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          width: 1,
                          color: Color(0xffFEB038),
                        ),
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          disabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 10, top: 5),
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(
                      "Location",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 365,
                      height: 58,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          width: 1,
                          color: Color(0xffFEB038),
                        ),
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          disabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 10, top: 5),
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    "Owner Info",
                    style: TextStyle(fontSize: 24, color: Colors.black, fontFamily: "Inter, Bold"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 67,
                        height: 67,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("assets/slicing/Ellipse 67@3x.png"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bruice Banner",
                            style: TextStyle(fontSize: 22, color: Colors.black, fontFamily: "Inter, Bold"),
                          ),
                          Text(
                            "Los Angeles, California (Owner)",
                            style: TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.53), fontFamily: "Inter, Light"),
                          ),
                          Text(
                            "Call Now : +1 123 456 789",
                            style: TextStyle(fontSize: 16, color: Colors.black, fontFamily: "Inter, Light"),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        onlinepay = false;
                        // cod = false;
                      });
                    },
                    child: Container(
                      height: 19,
                      width: 19,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, border: Border.all(color: onlinepay == false ? Color(0xff303030) : Colors.black, width: 3)),
                      child: Icon(
                        Icons.circle_rounded,
                        color: onlinepay == false ? Color(0xff303030) : Colors.white,
                        size: 13,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Online Payment",
                    style: TextStyle(fontSize: 21, color: Colors.black, fontFamily: "Inter, Regular"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        onlinepay = true;
                        // cod = true;
                      });
                    },
                    child: Container(
                      height: 19,
                      width: 19,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, border: Border.all(color: onlinepay == true ? Color(0xff303030) : Colors.black, width: 3)),
                      child: Icon(
                        Icons.circle_rounded,
                        color: onlinepay == true ? Color(0xff303030) : Colors.white,
                        size: 13,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "COD",
                    style: TextStyle(fontSize: 21, color: Colors.black, fontFamily: "Inter, Regular"),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => Chat());
                    },
                    child: Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffFEB038),
                      ),
                      child: Icon(Icons.message_outlined),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => SelectPaymentMethodScreen());
                    },
                    child: Container(
                      width: 310,
                      height: 58,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xffFEB038),
                      ),
                      child: Center(
                        child: Text(
                          "Order Now",
                          style: TextStyle(fontSize: 17, color: Colors.black, fontFamily: "Inter, Bold"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
