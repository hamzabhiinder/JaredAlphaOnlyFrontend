import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrackingDetailScreen extends StatefulWidget {
  const TrackingDetailScreen({super.key});

  @override
  State<TrackingDetailScreen> createState() => _TrackingDetailScreenState();
}

class _TrackingDetailScreenState extends State<TrackingDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Tracking Detail0",
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    Text(
                      "Get by Tue 9- Thu 11 Sep",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 391,
                  height: 1,
                  color: Colors.grey.withOpacity(0.4),
                ),
                SizedBox(
                  height: 17,
                ),
                RR(),
                SizedBox(
                  height: 50,
                ),
                Icn("assets/slicing/Group 353@3x.png", "Out of Delivery",
                    "Address : Lorem ipsum dolor sit amet consectetur adipiscing elit cras, condimentum nec purus dictumst consequat taciti City,"),
                Padding(
                  padding: const EdgeInsets.only(right: 235),
                  child: Container(
                    height: 60,
                    width: 1,
                    color: Color(0xff707070),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Icn("assets/slicing/Group 353@3x.png", "Shipped",
                    "Address : Lorem ipsum dolor sit amet consectetur adipiscing elit cras, condimentum nec purus dictumst consequat taciti City,"),
                Padding(
                  padding: const EdgeInsets.only(right: 235),
                  child: Container(
                    height: 60,
                    width: 1,
                    color: Color(0xff707070),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Icn(
                    "assets/slicing/Group 353@3x.png",
                    "Arrived at Our Warehouse",
                    "Address : Lorem ipsum dolor sit amet consectetur adipiscing elit cras, condimentum nec purus dictumst consequat taciti City,"),
                Padding(
                  padding: const EdgeInsets.only(right: 235),
                  child: Container(
                    height: 60,
                    width: 1,
                    color: Color(0xff707070),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Icn(
                    "assets/slicing/Group 353@3x.png",
                    "Reached Logistic Facility",
                    "Address : Lorem ipsum dolor sit amet consectetur adipiscing elit cras, condimentum nec purus dictumst consequat taciti City,"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RR() {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff321A08)),
              child: Icon(
                Icons.person_outline_outlined,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 22,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Courier BDD Steve - 456789",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Delivery Partners : FEDEX",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 11),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 66,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(),
              child: Image.asset(
                  "assets/slicing/20171102_MH_BOBSLED_1737 (1)-1@2x.png"),
            ),
            SizedBox(
              width: 22,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Reciver : John Smith",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "1234567897",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 11),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  width: 270,
                  child: Text(
                    "Address : Lorem ipsum dolor sit amet consectetur adipiscing elit cras, condimentum nec purus dictumst consequat taciti City,",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 11),
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }

  Icn(
    img,
    txt,
    txt1,
  ) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 35,
              child: Text(
                "Aug 12 21:20",
                style: TextStyle(fontSize: 11),
              ),
            ),
            Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xff321A08)),
                child: Image.asset(
                  img,
                  scale: 3,
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  txt,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Container(
                  width: 270,
                  child: Text(
                    txt1,
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 11),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
