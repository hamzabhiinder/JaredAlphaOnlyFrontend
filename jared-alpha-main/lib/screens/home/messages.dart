import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jared/helper/colors.dart';
import 'package:jared/screens/home/chat.dart';
// import 'package:jared/screens/home/profile/myprofile.dart';
import 'package:jared/screens/mainfolder/drawer.dart';
import 'package:jared/screens/profile/myprofile.dart';

class MessageScreen extends StatefulWidget {
  MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
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
          'Notifiation  ',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 19),
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
      // backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
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
                children: [
                  Container(
                    height: res_height * 0.05,
                    width: res_width * 0.1,
                    child: Image.asset('assets/slicing/chip.png'),
                  ),
                  SizedBox(
                    width: res_width * 0.03,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                      SizedBox(
                        width: res_width * 0.3,
                      ),
                      Column(
                        children: [
                          Text(
                            '12 : 30',
                            style: TextStyle(fontSize: 11, color: Colors.grey),
                          ),
                          SizedBox(
                            height: res_height * 0.007,
                          ),
                          Container(
                            height: res_height * 0.03,
                            width: res_width * 0.07,
                            decoration: BoxDecoration(
                                color: kprimaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                    fontSize: 11, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
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
}
