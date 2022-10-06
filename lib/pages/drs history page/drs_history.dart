// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../routs.dart';

class DrsHistory extends StatelessWidget {
  const DrsHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Center(
            child: Padding(
          padding: EdgeInsets.only(right: 40.0),
          child: Text(
            "Drs History",
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
        )),
      ),
      body: ListView(children: [
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, MyRouts.drsHistoryAwbrout);
          },
          child: Card(
            color: Colors.grey.shade100,
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("0/1"),
              ),
              title: Text("5S6W2"),
              subtitle: Text("2021-12-09"),
            ),
          ),
        )
      ]),
    );
  }
}
