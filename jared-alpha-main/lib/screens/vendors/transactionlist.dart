import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jared/helper/colors.dart';
import 'package:jared/screens/home/chat.dart';
import 'package:jared/screens/mainfolder/drawer.dart';

class TransactionListScreen extends StatefulWidget {
  TransactionListScreen({Key? key}) : super(key: key);

  @override
  State<TransactionListScreen> createState() => _TransactionListScreenState();
}

class _TransactionListScreenState extends State<TransactionListScreen> {
  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _key = GlobalKey();

    return Scaffold(
      key: _key,
      drawer: DrawerScreen(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Transaction List',
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
      // backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: res_width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: res_width * 0.3,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'All',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        Container(
                          width: res_width * 0.3,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: res_width * 0.3,
                          child: TextButton(
                            style: ButtonStyle(
                              alignment: Alignment.center,
                            ),
                            onPressed: () {},
                            child: Text(
                              'Incoming',
                              style: TextStyle(color: kprimaryColor),
                            ),
                          ),
                        ),
                        Container(
                          width: res_width * 0.3,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kprimaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: res_width * 0.3,
                          child: TextButton(
                            style: ButtonStyle(
                              alignment: Alignment.center,
                            ),
                            onPressed: () {},
                            child: Text(
                              'Outgoing',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        Container(
                          width: res_width * 0.3,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: res_height * 0.018,
              ),

              card(),
              SizedBox(
                height: res_height * 0.01,
              ),
              card(),
              SizedBox(
                height: res_height * 0.01,
              ),
              card(),
              SizedBox(
                height: res_height * 0.01,
              ),
              card(),
              SizedBox(
                height: res_height * 0.01,
              ),
              card(),
              SizedBox(
                height: res_height * 0.01,
              ),
              card(),
              SizedBox(
                height: res_height * 0.01,
              ),
              card(),
              SizedBox(
                height: res_height * 0.01,
              ),
              card(),
              SizedBox(
                height: res_height * 0.01,
              ),
              card(),
              SizedBox(
                height: res_height * 0.01,
              ),
              card(),
              SizedBox(
                height: res_height * 0.01,
              ),

              // SizedBox(height: res_height * 0.005),
            ],
          ),
        ),
      ),
    );
  }

  card() {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Get.to(() => Chat());
      },
      child: Container(
        width: res_width * 0.9,
        // height: res_height * 0.09,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: res_height * 0.05,
                        width: res_width * 0.1,
                        child: Image.asset('assets/slicing/chip.png'),
                      ),
                      SizedBox(
                        width: res_width * 0.03,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jackson',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Lorem iauus a dapibus.  ',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    '-56 USD',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
