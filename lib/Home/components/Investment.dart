import 'package:flutter/material.dart';

import 'Investment1.dart';
import 'Investment2.dart';

class Investment extends StatefulWidget {
  @override
  _InvestmentState createState() => _InvestmentState();
}

class _InvestmentState extends State<Investment> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: EdgeInsets.fromLTRB(23, 0, 23, 0),
        child:Row(
          children: [
            Investment1(),
            SizedBox(width:15),
            Investment2(),

            // Person2()
          ],)
        
      ),
    );
  }
}