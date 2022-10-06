// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../components/custom_button.dart';
import '../routs.dart';

class DrsAwbHistory extends StatelessWidget {
  const DrsAwbHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Padding(
          padding: const EdgeInsets.only(right: 45.0),
          child: Center(
            child: Text(
              "Drs Awb List",
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
      body: ListView(children: [
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
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, MyRouts.drsDetallHistoryRout);
            },
            child: Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5, spreadRadius: .2, color: Colors.grey)
                    ]),
                child: Row(children: <Widget>[
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
                        child: Text("12000009",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text("2021-12-09"),
                      )
                    ],
                  )
                ])),
          ),
        )
      ]),
    );
  }
}
