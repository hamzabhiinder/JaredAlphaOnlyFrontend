import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jared/helper/colors.dart';
import 'package:jared/screens/auth/Otp.dart';
import 'package:jared/screens/auth/ProductDetail.dart';
import 'package:jared/screens/auth/login.dart';
import 'package:jared/screens/auth/register.dart';
import 'package:jared/screens/home/AddNewAddress.dart';
import 'package:jared/screens/home/Categoriesss.dart';

import 'package:jared/screens/home/Electronics.dart';
import 'package:jared/screens/home/Electronics2.dart';
import 'package:jared/screens/home/Filter.dart';
import 'package:jared/screens/home/FollowingStores.dart';
import 'package:jared/screens/home/Messages(32).dart';
import 'package:jared/screens/home/RenterView.dart';
import 'package:jared/screens/home/ShippingAddress.dart';
import 'package:jared/screens/home/StoreProfile.dart';
import 'package:jared/screens/home/TrackMyOrders.dart';
import 'package:jared/screens/home/TypeReviews.dart';
import 'package:jared/screens/home/addCard.dart';
import 'package:jared/screens/home/cart.dart';
import 'package:jared/screens/home/payrent.dart';
import 'package:jared/screens/home/setting.dart';
import 'package:jared/screens/mainfolder/homemain.dart';
import 'package:jared/screens/vendors/EditProduct.dart';
import 'package:jared/screens/vendors/OrderDetail1.dart';
import 'package:jared/screens/vendors/Productdetail2.dart';
import './screens/home/home.dart';
import 'screens/auth/Setprofile.dart';
import 'screens/home/MyOrders.dart';
import 'screens/home/OrderConfirmation.dart';
import 'screens/home/Review1.dart';
import 'screens/home/SelectPaymentMethod.dart';
import 'screens/home/SelectPaymentMethodTow.dart';
import 'screens/home/TrackingDetail.dart';
import 'screens/mainfolder/firstmain.dart';
import 'screens/vendors/OrderDetail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/slicing/bg2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            width: double.infinity,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: res_height * 0.4,
                ),
                Container(
                    width: res_width * 0.7,
                    child: Image.asset('assets/slicing/logo.png')),
                SizedBox(
                  height: res_height * 0.03,
                ),
                Text('Find Your Best\nThings on Jebby',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
                SizedBox(
                  height: res_height * 0.03,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => LoginScreen());
                    // Get.to(() => MainScreen());
                  },
                  child: Container(
                    width: res_width * 0.5,
                    decoration: BoxDecoration(
                        color: kprimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(13))),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Center(
                          child: Text(
                        'Discover Now',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
