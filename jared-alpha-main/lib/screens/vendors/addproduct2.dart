import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jared/helper/colors.dart';
import 'package:jared/screens/mainfolder/homemain.dart';
import 'package:jared/screens/vendors/generatepromocode.dart';
import 'package:jared/screens/vendors/vendorhome.dart';

class AddProduct2Screen extends StatefulWidget {
  const AddProduct2Screen({Key? key}) : super(key: key);

  @override
  State<AddProduct2Screen> createState() => _AddProduct2ScreenState();
}

class _AddProduct2ScreenState extends State<AddProduct2Screen> {
  int _groupValue = -1;
  String dropdownValue = 'One';
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
            'General Information',
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
        body: 
        Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child:
             Column(
              children: [
                Container(
                  width: res_width * 0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Price'),
                      SizedBox(
                        height: res_height * 0.005,
                      ),
                      Container(
                        height: 50,
                        width: res_width * 0.9,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '500 \$',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: kprimaryColor, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: kprimaryColor, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                          ),
                        ),
                      ),
                      // Container(
                      //   height: 50,
                      //   width: res_width * 0.9,
                      //   child: TextField(
                      //     decoration: InputDecoration(
                      //         enabledBorder: OutlineInputBorder(
                      //             borderRadius: BorderRadius.circular(15),
                      //             borderSide: BorderSide(
                      //                 color: kprimaryColor, width: 1)),
                      //         filled: true,
                      //         fillColor: Colors.white,
                      //         hintText: "Rs 500",
                      //         hintStyle: TextStyle(color: Colors.grey)),
                      //   ),
                      // ),
                      SizedBox(
                        height: res_height * 0.01,
                      ),
                      Text('Per'),
                      SizedBox(
                        height: res_height * 0.005,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Center(
                          child: Container(
                            child: DropdownButtonFormField(
                              hint: Text(
                                  'Select option'), // Not necessary for Option 1

                              items: [
                                {"value": "Login", "label": "Login"},
                                {"value": "Create", "label": "Create"},
                                {"value": "Read", "label": "Read"},
                                {"value": "Update", "label": "Update"},
                                {"value": "Delete", "label": "Delete"},
                                {"value": "Print", "label": "Print"},
                                {"value": "Email", "label": "Email"},
                                {"value": "Sms", "label": "Sms"},
                                {
                                  "value": "Upload Image",
                                  "label": "Upload Image"
                                },
                                {"value": "Read All", "label": "Read All"}
                              ].map((category) {
                                return new DropdownMenuItem(
                                    value: category['value'],
                                    child: Text(
                                      category['label'].toString(),
                                      style: TextStyle(
                                          color: Color(0xffbdbdbd),
                                          fontFamily: 'UbuntuRegular'),
                                    ));
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  var _selectActionsText;
                                  _selectActionsText.text = newValue;
                                });
                              },
                              decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: kprimaryColor, width: 1),
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(15.0),
                                  ),
                                ),
                                enabledBorder: new OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: kprimaryColor, width: 1),
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(15.0),
                                  ),
                                ),
                                filled: true,
                                hintStyle: new TextStyle(
                                    color: Color(0xffbdbdbd),
                                    fontFamily: 'UbuntuRegular'),
                                fillColor: Colors.white70,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: kprimaryColor, width: 1),
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(15.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
//                       var currencies = [
//     "Food",
//     "Transport",
//     "Personal",
//     "Shopping",
//     "Medical",
//     "Rent",
//     "Movie",
//     "Salary"
//   ];

//  FormField<String>(
//           builder: (FormFieldState<String> state) {
//             return InputDecorator(
//               decoration: InputDecoration(
//                   labelStyle: textStyle,
//                   errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
//                   hintText: 'Please select expense',
//                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
//               isEmpty: _currentSelectedValue == '',
//               child: DropdownButtonHideUnderline(
//                 child: DropdownButton<String>(
//                   value: _currentSelectedValue,
//                   isDense: true,
//                   onChanged: (String newValue) {
//                     setState(() {
//                       _currentSelectedValue = newValue;
//                       state.didChange(newValue);
//                     });
//                   },
//                   items: _currencies.map((String value) {
//                     return DropdownMenuItem<String>(
//                       value: value,
//                       child: Text(value),
//                     );
//                   }).toList(),
//                 ),
//               ),
//             );
//           },
//         )
                      // dropdown('Day'),
                      // DropdownButtonFormField(items: items, onChanged: onChanged)
                      // DropdownButton<String>(
                      //   // value: dropdownValue,
                      //   // icon: const Icon(
                      //   //   Icons.keyboard_arrow_down,
                      //   //   size: 1,
                      //   // ),
                      //   // elevation: 16,
                      //   // style: const TextStyle(color: Colors.deepPurple),
                      //   // underline: Container(
                      //   //   height: 2,
                      //   //   color: Colors.deepPurpleAccent,
                      //   // ),
                      //   onChanged: (String? newValue) {
                      //     setState(() {
                      //       dropdownValue = newValue!;
                      //     });
                      //   },
                      //   items: <String>['1', '2', '3', '4']
                      //       .map<DropdownMenuItem<String>>((String value) {
                      //     return DropdownMenuItem<String>(
                      //       value: value,
                      //       child: Text(value),
                      //     );
                      //   }).toList(),
                      // ),
                      // dropdown('Day'),
                      SizedBox(
                        height: res_height * 0.01,
                      ),
                      Text('Add Category'),
                      SizedBox(
                        height: res_height * 0.005,
                      ),
                      // dropdown('Select'),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Center(
                          child: Container(
                            child: DropdownButtonFormField(
                              hint: Text(
                                  'Select option'), // Not necessary for Option 1

                              items: [
                                {"value": "Login", "label": "Login"},
                                {"value": "Create", "label": "Create"},
                                {"value": "Read", "label": "Read"},
                                {"value": "Update", "label": "Update"},
                                {"value": "Delete", "label": "Delete"},
                                {"value": "Print", "label": "Print"},
                                {"value": "Email", "label": "Email"},
                                {"value": "Sms", "label": "Sms"},
                                {
                                  "value": "Upload Image",
                                  "label": "Upload Image"
                                },
                                {"value": "Read All", "label": "Read All"}
                              ].map((category) {
                                return new DropdownMenuItem(
                                    value: category['value'],
                                    child: Text(
                                      category['label'].toString(),
                                      style: TextStyle(
                                          color: Color(0xffbdbdbd),
                                          fontFamily: 'UbuntuRegular'),
                                    ));
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  var _selectActionsText;
                                  _selectActionsText.text = newValue;
                                });
                              },
                              decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: kprimaryColor, width: 1),
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(15.0),
                                  ),
                                ),
                                enabledBorder: new OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: kprimaryColor, width: 1),
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(15.0),
                                  ),
                                ),
                                filled: true,
                                hintStyle: new TextStyle(
                                    color: kprimaryColor,
                                    fontFamily: 'UbuntuRegular'),
                                fillColor: Colors.white70,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: kprimaryColor, width: 1),
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(15.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: _myRadioButton(
                              title: "Free Pickup",
                              value: 0,
                              onChanged: (newValue) =>
                                  setState(() => _groupValue = newValue),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: _myRadioButton(
                              title: "Location Based Delivery",
                              value: 1,
                              onChanged: (newValue) =>
                                  setState(() => _groupValue = newValue),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: res_height * 0.005,
                      ),
                      itemdtl('Product Availibility'),
                      SizedBox(
                        height: res_height * 0.005,
                      ),
                      itemdtl('Discount Availibility'),
                      SizedBox(
                        height: res_height * 0.02,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => GeneratePromoCode());
                        },
                        child: Center(
                          child: Container(
                            width: 398,
                            height: 58,
                            decoration: BoxDecoration(
                                color: kprimaryColor,
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Text(
                                'Add Promo Code',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: res_height * 0.02,
                      ),
                      Text('Price'),
                      SizedBox(
                        height: res_height * 0.005,
                      ),
                      Container(
                        height: 50,
                        width: res_width * 0.7,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '###############',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: kprimaryColor, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: kprimaryColor, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: res_height * 0.01,
                      ),
                      Text('Discount'),
                      SizedBox(
                        height: res_height * 0.005,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: res_width * 0.4,
                            child: TextField(
                              decoration: InputDecoration(
                                // hintText: '%',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: kprimaryColor, width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: kprimaryColor, width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                              ),
                            ),
                          ),
                          // Container(
                          //   height: 50,
                          //   width: res_width * 0.4,
                          //   child: TextField(
                          //     decoration: InputDecoration(
                          //       enabledBorder: OutlineInputBorder(
                          //           borderRadius: BorderRadius.circular(15),
                          //           borderSide: BorderSide(
                          //               color: kprimaryColor, width: 1)),
                          //       filled: true,
                          //       fillColor: Colors.white,
                          //       // hintText: "Rs 500",
                          //       // hintStyle: TextStyle(color: Colors.grey)),
                          //     ),
                          //   ),
                          // ),
                          SizedBox(
                            width: res_width * 0.05,
                          ),
                          Text(
                            '%',
                            style: TextStyle(fontSize: 25, color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: res_height * 0.02,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => GeneratePromoCode());
                  },
                  child: Center(
                    child: Container(
                      width: 380,
                      height: 58,
                      decoration: BoxDecoration(
                          color: kprimaryColor,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: res_height * 0.02,
                ),
              ],
            ),
          ),
        ),
        );
  }

  dropdown(txt) {
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      height: 60,
      width: res_width * 0.9,
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: kprimaryColor, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: kprimaryColor, width: 1)),
          filled: true,
          fillColor: Colors.white,
          hintText: txt,
          hintStyle: TextStyle(color: Colors.grey),
          suffix: DropdownButton<String>(
            // value: dropdownValue,
            // icon: const Icon(
            //   Icons.keyboard_arrow_down,
            //   size: 1,
            // ),
            // elevation: 16,
            // style: const TextStyle(color: Colors.deepPurple),
            // underline: Container(
            //   height: 2,
            //   color: Colors.deepPurpleAccent,
            // ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>['1', '2', '3', '4']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        
        ),
      ),
    );
  }

  itemdtl(txth1) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: res_height * 0.01,
          ),
          Container(
            child: Row(
              children: [
                Container(
                  width: res_width * 0.25,
                  height: res_height * 0.12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 1,
                      bottom: 1,
                    ),
                    child: Image.asset('assets/slicing/Layer 7.png'),
                  ),
                ),
                SizedBox(width: res_width * 0.03),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Apple 10.9-inch',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 19),
                    ),
                    SizedBox(
                      height: res_height * 0.01,
                    ),
                    Text(
                      '70,000',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: res_height * 0.018,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                txth1,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: res_height * 0.018,
          ),
          Center(
            child: Row(
              children: [
                // datebox(),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Start Date',
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                      SizedBox(
                        height: res_height * 0.01,
                      ),
                      Row(
                        children: [
                          Container(
                            height: res_height * 0.04,
                            width: res_width * 0.29,
                            child: Center(
                                child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 3),
                                  child: Center(
                                    child: Text(
                                      '31/12/2021  ',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7),
                                border:
                                    Border.all(color: Colors.grey, width: 0.3)),
                          ),
                          SizedBox(
                            width: res_width * 0.01,
                          ),
                          GestureDetector(
                            onTap: () {
                              DateTime selectedDate = DateTime.now();

                              showDatePicker(
                                context: context,
                                initialDate: DateTime(2020),
                                firstDate: DateTime(2020),
                                lastDate: DateTime(2022),
                                builder: (context, child) {
                                  return Theme(
                                    data: Theme.of(context).copyWith(
                                      colorScheme: ColorScheme.light(
                                        primary:
                                            kprimaryColor, // header background color
                                        onPrimary:
                                            Colors.white, // header text color
                                        onSurface:
                                            kprimaryColor, // body text color
                                      ),
                                      textButtonTheme: TextButtonThemeData(
                                        style: TextButton.styleFrom(
                                          primary:
                                              kprimaryColor, // button text color
                                        ),
                                      ),
                                    ),
                                    child: child!,
                                  );
                                },
                              );

                              // if (picked != null && picked != selectedDate) {
                              //   setState(() {
                              //     selectedDate = picked;
                              //   });}
                            },
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child:
                                    Image.asset('assets/slicing/calender.png'),
                              ),
                              height: res_height * 0.04,
                              width: res_width * 0.11,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                  border: Border.all(
                                      color: Colors.grey, width: 0.3)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: res_width * 0.06,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'End Date',
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                      SizedBox(
                        height: res_height * 0.01,
                      ),
                      Row(
                        children: [
                          Container(
                            height: res_height * 0.04,
                            width: res_width * 0.29,
                            child: Center(
                                child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 3),
                                  child: Center(
                                    child: Text(
                                      '31/12/2021  ',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7),
                                border:
                                    Border.all(color: Colors.grey, width: 0.3)),
                          ),
                          SizedBox(
                            width: res_width * 0.01,
                          ),
                          GestureDetector(
                            onTap: () {
                              DateTime selectedDate = DateTime.now();

                              showDatePicker(
                                context: context,
                                initialDate: DateTime(2020),
                                firstDate: DateTime(2020),
                                lastDate: DateTime(2022),
                                builder: (context, child) {
                                  return Theme(
                                    data: Theme.of(context).copyWith(
                                      colorScheme: ColorScheme.light(
                                        primary:
                                            kprimaryColor, // header background color
                                        onPrimary:
                                            Colors.white, // header text color
                                        onSurface:
                                            kprimaryColor, // body text color
                                      ),
                                      textButtonTheme: TextButtonThemeData(
                                        style: TextButton.styleFrom(
                                          primary:
                                              kprimaryColor, // button text color
                                        ),
                                      ),
                                    ),
                                    child: child!,
                                  );
                                },
                              );

                              // if (picked != null && picked != selectedDate) {
                              //   setState(() {
                              //     selectedDate = picked;
                              //   });}
                            },
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child:
                                    Image.asset('assets/slicing/calender.png'),
                              ),
                              height: res_height * 0.04,
                              width: res_width * 0.11,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                  border: Border.all(
                                      color: Colors.grey, width: 0.3)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // datebox(),
              ],
            ),
          ),
          SizedBox(
            height: res_height * 0.02,
          ),
        ],
      ),
    );
  }

  _myRadioButton({title, value, onChanged}) {
    return RadioListTile(
      value: value,
      groupValue: _groupValue,
      onChanged: onChanged,
      title: Text(title),
      activeColor: kprimaryColor,
    );
  }






}
