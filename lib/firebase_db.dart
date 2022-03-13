import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class realtimeDB extends StatefulWidget {
  const realtimeDB({Key? key}) : super(key: key);

  @override
  State<realtimeDB> createState() => _realtimeDBState();
}

class _realtimeDBState extends State<realtimeDB> {
  late DatabaseReference _databaseReference;
  String dat = '';
  int pressing = 0;
  List<Map<String, dynamic>> fireDdata = [];

  insertData() {
    pressing = pressing + 1;
    fireDdata.clear();
    for (int a = 0; a < pressing; a++) fireDdata.add({'value': a});
    print('new value ' + fireDdata.toString());
    _databaseReference.child('path').set(jsonEncode(fireDdata));
  }

  showDb() {
    _databaseReference.once().then((event) {
      final dataSnapshot = event.snapshot.child('path').value;
      print(dataSnapshot.toString());
      dat = dataSnapshot.toString();
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    _databaseReference = FirebaseDatabase.instance.ref();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(onTap: insertData, child: Text('tet')),
                  InkWell(onTap: showDb, child: Text('Show the data')),
                ],
              ),
            ),
            Text(dat.toString())
          ],
        ),
      ),
    );
  }
}
