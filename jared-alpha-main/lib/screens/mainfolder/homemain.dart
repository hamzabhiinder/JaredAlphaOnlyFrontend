import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jared/controller/bottomcontroller.dart';
import 'package:jared/helper/colors.dart';
import 'package:jared/helper/global.dart';
import 'package:jared/screens/home/Favourites.dart';
import 'package:jared/screens/home/addCard.dart';
import 'package:jared/screens/home/cart.dart';
import 'package:jared/screens/home/category.dart';
import 'package:jared/screens/home/home.dart';
import 'package:jared/screens/home/messages.dart';
import 'package:jared/screens/home/orderHistory.dart';
import 'package:jared/screens/home/recorder.dart';
import 'package:jared/screens/home/setting.dart';
import 'package:jared/screens/home/writereview.dart';
import 'package:jared/screens/vendors/OrderReq.dart';
import 'package:jared/screens/vendors/ProductList.dart';
import 'package:jared/screens/vendors/vendorhome.dart';

import '../vendors/renterProfile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final bottomctrl = Get.put(BottomController());

  var screens = [
    HomeScreen(),
    FavouriteScreen(),
    Category(),
    MessageScreen(),
    Settings()
  ];

  var screensVendor = [
    VendrosHomeScreen(),
    ProductListScreen(),
    Category(),
    OrderRequestScreen(),
    RenterProfile()
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      body: GetBuilder<BottomController>(
        builder: (_) => loginType == "vendor"
            ? screensVendor[bottomctrl.navigationBarIndexValue]
            : screens[bottomctrl.navigationBarIndexValue],
      ),
      bottomNavigationBar: Container(
        width: size.width,
        height: 70,
        child: Stack(
          // clipBehavior: Clip.none,
          children: [
            CustomPaint(
              size: Size(size.width, 80),
              painter: BNBCustomPainter(),
            ),
            Center(
              heightFactor: 0.6,
              child: FloatingActionButton(
                  backgroundColor: kprimaryColor,
                  child: Image.asset(
                    'assets/slicing/layer.png',
                    width: 27,
                  ),
                  elevation: 0,
                  onPressed: () {
                    bottomctrl.navBarChange(2);
                  }),
            ),
            Container(
              width: size.width,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Image.asset(
                      'assets/slicing/home.png',
                      width: 20,
                    ),
                    onPressed: () {
                      bottomctrl.navBarChange(0);
                    },
                    splashColor: Colors.white,
                  ),
                  IconButton(
                      icon: Image.asset(
                        'assets/slicing/heart.png',
                        width: 20,
                      ),
                      onPressed: () {
                        bottomctrl.navBarChange(1);
                      }),
                  Container(
                    width: size.width * 0.20,
                  ),
                  IconButton(
                      icon: Image.asset(
                        'assets/slicing/notifications.png',
                        width: 20,
                      ),
                      onPressed: () {
                        bottomctrl.navBarChange(3);
                      }),
                  loginType == "vendor"
                      ? IconButton(
                          icon: Icon(
                            Icons.person_sharp,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            bottomctrl.navBarChange(4);
                          })
                      : IconButton(
                          icon: Image.asset(
                            'assets/slicing/settings.png',
                            width: 20,
                          ),
                          onPressed: () {
                            bottomctrl.navBarChange(4);
                          })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Color(0xff331a08)
      ..style = PaintingStyle.fill;

    Path path = Path();
    // path.moveTo(0, 20);
    path.moveTo(0, 0); // -> start at top left
    // path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.lineTo(size.width * 0.35, 0); // -> move to middle left
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    // path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, 0); // -> move from middle right to top right
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    // path.lineTo(0, 20);
    path.close(); // -> close path, same as path.lineTo(0, 0)
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
