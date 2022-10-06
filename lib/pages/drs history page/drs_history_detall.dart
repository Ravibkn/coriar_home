// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

import '../components/custom_button.dart';
import '../components/custom_container.dart';
import '../style_constent.dart';


class DrsDetallHistory extends StatefulWidget {
  const DrsDetallHistory({Key? key}) : super(key: key);

  @override
  State<DrsDetallHistory> createState() => _DrsDetallHistoryState();
}

class _DrsDetallHistoryState extends State<DrsDetallHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 0.0),
          child: Center(
              child: Text("Drs Detall History", style: mTextStyleHeader)),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        width: 400,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(
                                  15,
                                ),
                                topRight: Radius.circular(15))),
                        child: Center(
                            child: Text(
                          "Delivery",
                          style: mTextStyle2,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 5, right: 18),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: const [
                                Text(
                                  "AWB No",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  "1286845222",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Nane",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "Hwllo",
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Email",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "Li@gmail.com",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Mobile No",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 50.0),
                                  child: Icon(Icons.call),
                                ),
                                Text(
                                  "Call To Customer",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Address",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "Nathusar Gate",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  height: 190,
                  width: 400,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300, width: 2),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(17)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        width: 400,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(
                                  15,
                                ),
                                topRight: Radius.circular(15))),
                        child: Center(
                            child: Text(
                          "Collection",
                          style: mTextStyle2,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 5, right: 18),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Name",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  "Pankaj",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Email",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "KK@gmail.com",
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Mobile",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "0123456789",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Address",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "Nathusar Gate",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  height: 160,
                  width: 400,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300, width: 2),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(17)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        width: 400,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(
                                  15,
                                ),
                                topRight: Radius.circular(15))),
                        child: Center(
                            child: Text(
                          "Payment Info",
                          style: mTextStyle2,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 5, right: 18),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Booking-Type",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  "Cash",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Cod Amount",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "0.00",
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Service Charge",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "169.92",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Total Amount",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "169.92",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  height: 160,
                  width: 400,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300, width: 2),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(17)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        width: 400,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(
                                  15,
                                ),
                                topRight: Radius.circular(15))),
                        child: Center(
                            child: Text(
                          "Other Details",
                          style: mTextStyle2,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 5, right: 18),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "AWB No",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  "1286845222",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Booking Date/",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "2022-09-10",
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Time",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "Testtt",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Parcel Description Weight",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "1 (KG)",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Shipment Type",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            const Divider(
                              indent: 0,
                              endIndent: 0,
                              thickness: 2,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 65.0),
                            child: Text(
                              "Shipment-Status",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            "Delivered",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                  height: 240,
                  width: 400,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300, width: 2),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(17)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        width: 400,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(
                                  15,
                                ),
                                topRight: Radius.circular(15))),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Map", style: mTextStyle2),
                              CustomButton(text: "Get Diraction", onTap: () {})
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  height: 350,
                  width: 400,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300, width: 2),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(17)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomContenar(text: "Photo",
              ),
              const CustomContenar(
                text: "Signature",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
