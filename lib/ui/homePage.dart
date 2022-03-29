import 'package:flutter/material.dart';

import 'callLogsPage.dart';

class ChattingHOmePage extends StatefulWidget {
  const ChattingHOmePage({Key? key}) : super(key: key);

  @override
  State<ChattingHOmePage> createState() => _ChattingHOmePageState();
}

class _ChattingHOmePageState extends State<ChattingHOmePage> {
  callLogs() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => callLogsPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Original Morals'),
      ),
      body: ListView.builder(
          itemCount: 33,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text('Chandra  $index'));
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: callLogs,
        tooltip: 'CallLogs',
        child: const Icon(Icons.phone_callback_outlined),
      ),
    );
  }
}
