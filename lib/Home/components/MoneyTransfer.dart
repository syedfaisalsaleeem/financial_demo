import 'package:flutter/material.dart';

import 'DottedBox.dart';
import 'Person1.dart';
import 'Person2.dart';

class MoneyTransfer extends StatefulWidget {
  @override
  _MoneyTransferState createState() => _MoneyTransferState();
}

class _MoneyTransferState extends State<MoneyTransfer> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: EdgeInsets.fromLTRB(23, 0, 23, 0),
        child:Row(
          children: [
            DottedBox(),
            SizedBox(width:15),
            Person1(),
            SizedBox(width:15),
            Person2()
          ],)
        
      ),
    );
  }
}