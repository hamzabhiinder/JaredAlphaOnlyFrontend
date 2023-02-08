import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jared/helper/colors.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Messages',
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
      body: Container(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  customersuppor(),
                  SizedBox(
                    height: res_height * 0.01,
                  ),
                  customersuppor(),
                  SizedBox(
                    height: res_height * 0.01,
                  ),
                  usermsg(),
                  SizedBox(
                    height: res_height * 0.01,
                  ),
                  usermsg(),
                ],
              ),
            ),
            // SizedBox(
            //   height: res_height * 0.35,
            // ),

            SizedBox(
              height: res_height * 0.35,
            ),
          ],
        ),
      ),
      bottomSheet: getBottom(),
    );
  }

  Widget getBottom() {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.2)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        color: kprimaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: TextField(
                        cursorColor: Colors.black,
                        // controller: _sendMessageController,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Type a message",
                            hintStyle: TextStyle(color: Colors.white)
                            // suffixIcon: Icon(
                            //   Icons.face,
                            //   color: primary_one,
                            //   size: 35,
                            // )
                            ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.send,
                      size: 35,
                      color: kprimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  customersuppor() {
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      width: res_width * 0.9,
      child: Row(
        children: [
          Container(
            width: res_width * 0.2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/slicing/chip.png'),
            ),
          ),
          SizedBox(
            width: res_width * 0.03,
          ),
          Container(
            width: res_width * 0.67,
            child: Column(
              children: [
                Container(
                  width: res_width * 0.7,
                  decoration: BoxDecoration(
                    color: kprimaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer volutpat pretium diam quis varius.  ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '8/7/2022',
                      style: TextStyle(color: Color(0xffbfbab8)),
                    ),
                    Text('8:48PM', style: TextStyle(color: Color(0xffbfbab8)))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  usermsg() {
    double res_width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        width: res_width * 0.9,
        child: Row(
          children: [
            Container(
              width: res_width * 0.67,
              child: Column(
                children: [
                  Container(
                    width: res_width * 0.7,
                    decoration: BoxDecoration(
                      color: Color(0XFF331908),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer volutpat pretium diam quis varius.  ',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '8/7/2022',
                        style: TextStyle(color: Color(0xffbfbab8)),
                      ),
                      Text('8:48PM', style: TextStyle(color: Color(0xffbfbab8)))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: res_width * 0.03,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: res_width * 0.2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/slicing/chip.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
