import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Investment2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
          child: Container(
        width:240,
        height:149,
        child:Column(
          children: [
            SizedBox(height:10),
            Container(
              margin: EdgeInsets.only(left: 18),
              alignment: Alignment.centerLeft,
              child:Text("Investment",style: TextStyle(fontSize: 14,color:HexColor("#0B1D34"),fontWeight: FontWeight.w600)),
            ),
            SizedBox(height:8),
            Container(
              color:HexColor("#4A5271"),
              height: 0.5,
              width:239,
              child:Text("")
            ),
            SizedBox(height:13),
            Container(
              margin: EdgeInsets.only(left: 17),
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Container(
                    width:40,
                    height: 40,
                    child:Image(image: AssetImage("images/logo3.png"),) ,),
                  SizedBox(width:10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Geneal Investment",style: TextStyle(fontSize: 13,color:HexColor("#0B1D34"),fontWeight: FontWeight.w600)),
                    SizedBox(height:5),
                    Text("239 Days left",style: TextStyle(fontSize: 11,color:HexColor("#0B1D34"),fontWeight: FontWeight.w400))
                  ],)
                ],
              ),
            ),
            SizedBox(height: 11,),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left:10,right:23),
              child: LinearPercentIndicator(
                lineHeight: 8,
                    percent: 0.5,
                    progressColor: HexColor("#4A5271"),
                  ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.only(left: 17,right: 28),
              child:Row(children: [
                Expanded(child: Container(
                  child:Text("\u0024 SGD 00.00",style: TextStyle(fontSize: 10,color:HexColor("#0B1D34"),fontWeight: FontWeight.w400),)
                ),),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                  child:Text("\u0024 SGD 00.00",style: TextStyle(fontSize: 10,color:HexColor("#0B1D34"),fontWeight: FontWeight.w400))
                ),),
              ],)
            )
          ],)
      ),
    );
  }
}