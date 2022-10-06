// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unnecessary_brace_in_string_interps, non_constant_identifier_names
// https://booking.manishairexpress.com/rest_api_native/RestController.php
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../components/custom_button.dart';
import '../routs.dart';

class PickupAwbHistory extends StatefulWidget {
  const PickupAwbHistory({Key? key}) : super(key: key);

  @override
  State<PickupAwbHistory> createState() => _PickupAwbHistoryState();
}

class _PickupAwbHistoryState extends State<PickupAwbHistory> {
  List users = [];

  @override
  void initState() {
    super.initState();

    getAppData();
  }

  Future<void> getAppData() async {
    try {
      var res = await http.post(
          Uri.parse(
              'http://192.168.29.7/manishairexpress_cv9_web/rest_api_native/RestController.php'),
          body: {"view": "pickup_list", "user_id": "1", "page": "1"});
      if (res.statusCode == 200) {
        var items = json.decode(res.body)['output'];
        setState(() {
          users = items;
        });
      } else {
        users = [];
      }
    } catch (err) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("${err}")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Padding(
          padding: const EdgeInsets.only(right: 45.0),
          child: Center(
            child: Text(
              "Pickup Awb List",
              style: TextStyle(
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 8.0,
                    color: Color.fromARGB(124, 94, 94, 107),
                  ),
                ],
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 10),
            height: 90,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(blurRadius: 5, spreadRadius: .2, color: Colors.grey)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                  ),
                  child: Text(
                    "View Direction Of All\nBellow Pickup Shipments\nin Google Map ",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                CustomButton(text: "Get Direction", onTap: () {})
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return getCard(users[index]);
                }),
          )
        ],
      ),
    );
  }

  Widget getCard(item) {
    var drs_unique_id = item['drs_unique_id'];
    var drs_date = item['drs_date'];
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, MyRouts.pickupdetallHistoryrout,
            arguments: {drs_unique_id: 'drs_unique_id'});
      },
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 10),
        height: 70,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(blurRadius: 5, spreadRadius: .2, color: Colors.grey)
            ]),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("AWB No:"),
            ),
            Expanded(
              child: Divider(
                indent: 5.0,
                endIndent: 15,
                thickness: 1,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0, right: 10),
                  child: Text("${drs_unique_id}"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text("${drs_date}"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
