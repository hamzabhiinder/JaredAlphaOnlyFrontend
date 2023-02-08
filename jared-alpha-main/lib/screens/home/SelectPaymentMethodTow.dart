import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jared/helper/colors.dart';
import 'package:jared/screens/home/SelectPaymentMethod.dart';

class SelectPaymentMethodTowScreen extends StatefulWidget {
  const SelectPaymentMethodTowScreen({super.key});

  @override
  State<SelectPaymentMethodTowScreen> createState() =>
      _SelectPaymentMethodTowScreenState();
}

class _SelectPaymentMethodTowScreenState
    extends State<SelectPaymentMethodTowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          child: Text(
            "Select Payment Method",
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
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
        // actions: [
        //   Icon(
        //     Icons.add_circle_outline,
        //     color: Colors.black,
        //   ),
        // ],
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 124,
                      height: 96,
                      child: Image.asset(
                        "assets/slicing/Icon awesome-cc-visa@3x.png",
                      ),
                    ),
                    Container(
                      width: 124,
                      height: 96,
                      child: Image.asset(
                        "assets/slicing/Icon awesome-cc-paypal@3x.png",
                      ),
                    ),
                    Container(
                      width: 124,
                      height: 96,
                      child: Image.asset(
                        "assets/slicing/Icon awesome-cc-apple-pay@3x.png",
                      ),
                    ),
                  ],
                ),
                Txtfld("****** ****** ****** 123456"),
                Txtfld("Will Smith"),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    smallnotdrop("Expiry Date", "10 / 25", 171),
                    smallnotdrop("CVV", "485", 171),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "Save card details",
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 25,
                      child: Image.asset("assets/slicing/Group 67@2x.png"),
                    )
                  ],
                ),
                SizedBox(
                  height: 110,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => SelectPaymentMethodScreen());
                  },
                  child: Container(
                    height: 58,
                    width: 390,
                    child: Center(
                      child: Text(
                        'Add Now',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: kprimaryColor,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Txtfld(
    tf,
  ) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: res_height * 0.02,
          ),
          // Text(txt),
          SizedBox(
            height: res_height * 0.005,
          ),
          Container(
            height: 50,
            width: res_width * 0.9,
            child: TextField(
              decoration: InputDecoration(
                hintText: tf,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: kprimaryColor, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: kprimaryColor, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  smallnotdrop(
    labeltxt,
    hinttxt,
    double Sizez,
  ) {
    return Container(
      width: Sizez,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hinttxt,
          hintStyle: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
          labelText: labeltxt,
          contentPadding: EdgeInsets.only(right: -200),
          labelStyle: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
        style: TextStyle(color: Colors.grey, fontSize: 16),
      ),
    );
  }
}
