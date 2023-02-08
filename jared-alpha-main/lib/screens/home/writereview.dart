import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jared/helper/colors.dart';

class WriteReview extends StatefulWidget {
  const WriteReview({Key? key}) : super(key: key);

  @override
  State<WriteReview> createState() => _WriteReviewState();
}

class _WriteReviewState extends State<WriteReview> {
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
          'Write a Reviews',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 19),
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Container(
              child: Image.asset('assets/slicing/arrow.png'),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: res_width * 0.9,
                child: Column(
                  children: [
                    SizedBox(
                      height: res_height * 0.05,
                    ),
                    Text(
                      'Add Rating',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 37),
                    ),
                    SizedBox(
                      height: res_height * 0.02,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          size: 28,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.star,
                          size: 28,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.star,
                          size: 28,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.star,
                          size: 28,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.star,
                          size: 28,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: res_height * 0.05,
                    ),
                    Row(
                      children: [
                        Text(
                          'Add Photo or Video',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                            fontSize: 23,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: res_height * 0.02,
                    ),
                    Container(
                      width: res_width * 0.9,
                      height: res_height * 0.2,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: kprimaryColor,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: res_width * 0.2,
                        height: res_height * 0.15,
                        // child: ImageIcon(
                        //   AssetImage('assets/slicing/upload-cloud.png'),
                        // ),
                        child: Icon(
                          Icons.cloud_upload_rounded,
                          size: 25,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: res_height * 0.02,
                    ),
                    Row(
                      children: [
                        Text(
                          'Write Your Review',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                            fontSize: 23,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: res_height * 0.02,
                    ),
                    Container(
                      width: res_width * 0.9,
                      height: res_height * 0.2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffebebeb),
                        border: Border.all(
                          color: kprimaryColor,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(
                      height: res_height * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: res_height * 0.06,
                        width: res_width * 0.8,
                        child: Center(
                          child: Text(
                            'Submit',
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
}
