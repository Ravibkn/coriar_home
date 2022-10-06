// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unnecessary_brace_in_string_interps

import 'dart:convert';

import 'package:courierv9/pages/routs.dart';
import 'package:courierv9/pages/style_constent.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PickupList extends StatefulWidget {
  const PickupList({Key? key}) : super(key: key);

  @override
  State<PickupList> createState() => _PickupListState();
}

class _PickupListState extends State<PickupList> {
  List users = [];

  @override
  void initState() {
    super.initState();
    getAppData();
  }

  Future<void> getAppData() async {
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(
            child: Padding(
          padding: const EdgeInsets.only(right: 40.0),
          child: Text(
            "Pickup List",
            style: mTextStyleHeader,
          ),
        )),
      ),
      body: getList(),
    );
  }

  Widget getList() {
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return getCard(users[index]);
        });
  }

  Widget getCard(item) {
    var drs_unique_id = item['drs_unique_id'];
    var drs_date = item['drs_date'];
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, MyRouts.updateDrsRout);
      },
      child: Card(
        color: Colors.grey.shade100,
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("${item['pickup_delivered']}/${item['total_awb']}"),
          ),
          title: Text("${drs_unique_id}"),
          subtitle: Text("${drs_date}"),
        ),
      ),
    );
  }
}
