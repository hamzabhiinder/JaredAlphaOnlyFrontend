import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jared/helper/colors.dart';
import 'package:jared/screens/auth/ProductDetail.dart';
import 'package:jared/screens/mainfolder/drawer.dart';
import 'package:jared/screens/mainfolder/homemain.dart';
import 'package:jared/screens/profile/myprofile.dart';
import 'package:jared/screens/vendors/OrderReq.dart';
import 'package:jared/screens/vendors/ProductList.dart';
import 'package:jared/screens/vendors/addproduct.dart';
import 'package:jared/screens/vendors/orderlisting.dart';
import 'package:jared/screens/vendors/renterProfile.dart';
import 'package:jared/screens/vendors/transactionlist.dart';

import '../../controller/bottomcontroller.dart';

class VendrosHomeScreen extends StatefulWidget {
  const VendrosHomeScreen({Key? key}) : super(key: key);

  @override
  State<VendrosHomeScreen> createState() => _VendrosHomeScreenState();
}

class _VendrosHomeScreenState extends State<VendrosHomeScreen> {
  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _key = GlobalKey();

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
                Get.to(() => RenterProfile());
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
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: res_height * 0.015,
                ),
                Container(
                  width: res_width * 0.9,
                  child: Center(
                    child: Wrap(
                      spacing: 15,
                      runSpacing: 15,
                      children: [
                        contBox(txt: "Profile", img: 'assets/slicing/user.png'),
                        contBox(txt: "Product", img: 'assets/slicing/Icon awesome-shopping-basket@3x.png'),
                        contBox(txt: "Orders", img: 'assets/slicing/layer.png'),
                        contBox(txt: "Transactions", img: 'assets/slicing/swap.png'),
                      ],
                    ),
                  ),
                )
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
        if (txt == "Orders") {
          Get.to(() => OrderRequestScreen());
        }
        if (txt == "Transactions") {
          Get.to(() => TransactionListScreen());
        }
        if (txt == "Product") {
          final bottomcontroller = Get.put(BottomController());
          bottomcontroller.navBarChange(1);
          Get.to(() => MainScreen());
          // Get.to(() => ProductListScreen());
        }
        if (txt == "Profile") {
          Get.to(() => RenterProfile());
        }
      },
      child: Column(
        children: [
          Container(
            width: res_width * 0.4,
            height: res_height * 0.2,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: res_width * 0.135,
                  child: Image.asset(
                    '$img',
                    // height: 10,
                    // width: 10,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            "$txt",
            style: TextStyle(fontSize: 17),
          )
        ],
      ),
    );
  }
}
