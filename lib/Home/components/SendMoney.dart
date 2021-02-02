import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'MoneyTransfer.dart';

class SendMoney extends StatefulWidget {
  @override
  _SendMoneyState createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:[
          Container(
            margin: EdgeInsets.fromLTRB(23, 20, 23, 0),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Send Money To",
                style: TextStyle(
                          fontSize: 18,
                          color: HexColor("#3A3A3A"),
                          fontWeight: FontWeight.w800
                        ),
                ),
                InkWell(
                  child: Container(
                    child:Row(
                      children: [
                        Text("View All",
                        style: TextStyle(
                          fontSize: 14,
                          color: HexColor("#3A3A3A"),
                          fontWeight: FontWeight.w400
                        ),
                        ),
                        // SizedBox(width: 10),
                        // Icon(
                        //   Icons.arrow_forward_ios,
                        //   size: 15,
                        // )
                      ],)
                  ),
                )
              ],
            )
          ),
          SizedBox(height:20),
          MoneyTransfer()
          // BestAndWorstPerforming()

        ]
      ),
    );
  }
}