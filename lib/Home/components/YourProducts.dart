import 'package:financial_demo/Home/components/Investment.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class YourProducts extends StatefulWidget {
  @override
  _YourProductsState createState() => _YourProductsState();
}

class _YourProductsState extends State<YourProducts> {
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
                Text("Your Products",
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
          Investment()
          // BestAndWorstPerforming()

        ]
      ),
    );
  }
}