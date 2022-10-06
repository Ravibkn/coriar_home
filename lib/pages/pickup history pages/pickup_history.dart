// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unnecessary_brace_in_string_interps
// ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;

import 'package:courierv9/pages/style_constent.dart';
import 'package:lottie/lottie.dart';

import '../routs.dart';

class PickupHistory extends StatefulWidget {
  const PickupHistory({Key? key}) : super(key: key);

  @override
  State<PickupHistory> createState() => _PickupHistoryState();
}

class _PickupHistoryState extends State<PickupHistory> {
  List users = [];

  @override
  var isLoading = true;
  @override
  void initState() {
    super.initState();
    getAppData();
  }

  Future<void> getAppData() async {
    var m_id = _myBox.get("m_id");

    var res = await http.post(
        Uri.parse(
            'https://booking.manishairexpress.com/rest_api_native/RestController.php'),
        body: {
          "view": "pickup_history_list",
          "user_id": m_id,
          "page": "1",
        });
    setState(() {
      isLoading = false;
    });
    if (res.statusCode == 200) {
      var items = jsonDecode(res.body)['output'];
      // print(items);
      if (items[0]['error'] == 'No Record found!') {
        users = [];
      } else {
        setState(() {
          users = items;
        });
      }
    } else {
      users = [];
    }
  }

  final _myBox = Hive.box('AppData');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Center(
              child: Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Text(
              "Pickup History",
              style: mTextStyleHeader,
            ),
          )),
        ),
        body: isLoading == false
            ? getList()
            : Center(
                child: Lottie.asset("images/delavery.json",
                    width: 150, height: 150),
              ));
  }

  Widget getList() {
    if (users.length > 0) {
      return ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return getCard(users[index]);
          });
    } else {
      return Center(child: const Text('No items'));
    }
  }

  Widget getCard(item) {
    var drs_unique_id = item['drs_unique_id'];
    var drs_date = item['drs_date'];
    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, MyRouts.pickupawbhistoryrout,
              arguments: {'drs_unique_id': drs_unique_id});
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
        ));
  }
}
