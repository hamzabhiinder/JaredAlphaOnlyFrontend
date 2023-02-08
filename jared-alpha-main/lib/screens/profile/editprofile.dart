import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jared/helper/colors.dart';
import 'package:jared/screens/profile/myprofile.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
          'Edit Profile',
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
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: res_width * 0.9,
                child: Column(
                  children: [
                    SizedBox(
                      height: res_height * 0.04,
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 400,
                          height: 136,
                          decoration: BoxDecoration(),
                          child: Image.asset(
                              "assets/slicing/Rectangle 546@3x.png"),
                        ),
                        Positioned(
                          bottom: 9,
                          right: -25,
                          child: Container(
                            height: 36,
                            child: RawMaterialButton(
                              onPressed: () {},
                              elevation: 1,
                              fillColor: Color(0xff321A08),
                              child: Icon(
                                Icons.upload,
                                color: Colors.white,
                              ),
                              // Image.asset(
                              //   "assets/slicing/Ellipse 67@3x.png",
                              //   scale: 1.5,
                              // ),
                              // padding: EdgeInsets.all(2),
                              shape: CircleBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          bottom: -20,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                child: CircleAvatar(
                                    radius: 40,
                                    child: Image.asset(
                                        "assets/slicing/Ellipse 67@3x.png")),
                              ),
                              Positioned(
                                bottom: -12,
                                right: -4,
                                child: Container(
                                  height: 36,
                                  child: RawMaterialButton(
                                    onPressed: () {},
                                    elevation: 1,
                                    fillColor: Color(0xff321A08),
                                    child: Icon(
                                      Icons.upload,
                                      color: Colors.white,
                                    ),
                                    // Image.asset(
                                    //   "assets/slicing/Ellipse 67@3x.png",
                                    //   scale: 1.5,
                                    // ),
                                    // padding: EdgeInsets.all(2),
                                    shape: CircleBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jackson",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 32),
                            ),
                            Text(
                              "Verified User",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                    Txtfld(
                      "Name",
                    ),
                    Txtfld(
                      "Email",
                    ),
                    Txtfld(
                      "Location",
                    ),
                    SizedBox(
                      height: res_height * 0.2,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                        // Get.to(() => MyProfileScreen());
                      },
                      child: Container(
                        height: res_height * 0.06,
                        width: res_width * 0.9,
                        child: Center(
                          child: Text(
                            'Save',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 19),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: kprimaryColor,
                            borderRadius: BorderRadius.circular(14)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Txtfld(
    txt,
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
          Text(txt),
          SizedBox(
            height: res_height * 0.005,
          ),
          Container(
            height: 50,
            width: res_width * 0.9,
            child: TextField(
              decoration: InputDecoration(
                // hintText: tf,
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
}
