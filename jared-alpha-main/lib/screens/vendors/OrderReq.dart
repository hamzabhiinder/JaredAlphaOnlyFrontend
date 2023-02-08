import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jared/screens/vendors/OrderDetail.dart';
import 'package:jared/screens/vendors/OrderDetail1.dart';

class OrderRequestScreen extends StatefulWidget {
  const OrderRequestScreen({super.key});

  @override
  State<OrderRequestScreen> createState() => _OrderRequestScreenState();
}

class _OrderRequestScreenState extends State<OrderRequestScreen> {
  @override
  var selcted;
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
        title: Text(
          "Order Request",
          style: TextStyle(
              fontSize: 22, color: Colors.black, fontFamily: "Inter, Black"),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selcted = 1;
                    });
                  },
                  child: Container(
                    height: 37,
                    width: 122,
                    decoration: BoxDecoration(
                      color: selcted == 1 ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: Colors.amber),
                    ),
                    child: Center(
                      child: Text(
                        "New Orders",
                        style: TextStyle(
                            color: selcted == 1 ? Colors.white : Colors.black),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selcted = 2;
                    });
                  },
                  child: Container(
                    height: 37,
                    width: 122,
                    decoration: BoxDecoration(
                        color: selcted == 2 ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: Colors.amber)),
                    child: Center(
                      child: Text(
                        "Pending",
                        style: TextStyle(
                          color: selcted == 2 ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selcted = 3;
                    });
                  },
                  child: Container(
                    height: 37,
                    width: 122,
                    decoration: BoxDecoration(
                        color: selcted == 3 ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: Colors.amber)),
                    child: Center(
                      child: Text(
                        "Completed",
                        style: TextStyle(
                            color: selcted == 3 ? Colors.white : Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            selcted == 1
                ? Container(
                    width: double.infinity,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => OrderDetail1Screen());
                            },
                            child: neworderwidget(
                              name: "Bistro",
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          neworderwidget(
                            name: "Smart Phone",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          neworderwidget(
                            name: "Amazone",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          neworderwidget(
                            name: "Iphone 12",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          neworderwidget(
                            name: "Travel",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          neworderwidget(
                            name: "Smart phone",
                          ),
                        ],
                      ),
                    ),
                  )
                : selcted == 2
                    ? Container(
                        width: double.infinity,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              pendingwidget(
                                  name: "Bistro",
                                  onTap: () {
                                    Get.to(() => OrderDetailScreen());
                                  }),
                              SizedBox(
                                height: 10,
                              ),
                              pendingwidget(
                                name: "Smart Phone",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              pendingwidget(
                                name: "Amazon",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              pendingwidget(
                                name: "Iphone 12",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              pendingwidget(name: "Travel"),
                              SizedBox(
                                height: 10,
                              ),
                              pendingwidget(name: "Smart Phone"),
                              SizedBox(
                                height: 10,
                              ),
                              pendingwidget(name: "Travel"),
                            ],
                          ),
                        ),
                      )
                    : Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => OrderDetailScreen());
                            },
                            child: pendingwidget(
                              name: "Bistro",
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          pendingwidget(
                            name: "Smart Phone",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          pendingwidget(
                            name: "Amazon",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          pendingwidget(
                            name: "Iphone 12",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          pendingwidget(name: "Travel"),
                          SizedBox(
                            height: 10,
                          ),
                          pendingwidget(name: "Smart Phone"),
                          SizedBox(
                            height: 10,
                          ),
                          pendingwidget(name: "Travel"),
                        ],
                      )
          ]),
        ),
      ),
    );
  }
}

class pendingwidget extends StatelessWidget {
  var onTap;
  String name;
  pendingwidget({
    required this.name,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 386,
        height: 96,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, 8), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.amber),
              child: Image.asset(
                "assets/slicing/handsome-businessman-suit-glasses-cross-arms-chest-look.png",
                fit: BoxFit.none,
                scale: 3,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Request your order",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class neworderwidget extends StatelessWidget {
  String name;
  neworderwidget({
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 386,
      height: 96,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 8), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            width: 15,
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.amber),
            child: Image.asset(
              "assets/slicing/handsome-businessman-suit-glasses-cross-arms-chest-look.png",
              fit: BoxFit.none,
              scale: 3,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Request your order",
                style: TextStyle(fontSize: 15, color: Colors.black),
              )
            ],
          ),
          SizedBox(
            width: 90,
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 122, 236, 126)),
            child: Icon(
              Icons.check,
              size: 20,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 35,
            height: 35,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
            child: Icon(
              Icons.close,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
