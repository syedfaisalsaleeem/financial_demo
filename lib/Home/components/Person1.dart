import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class Person1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      child:Card(
        child:Container(
          width:142,
          height:112,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height:15),
            Container(
              margin: EdgeInsets.only(left: 16,right:10),
              child: Row(children: [
              Container(width:30,height:30,child:Image(image: AssetImage("images/cb.png"),)),
              SizedBox(width:6),
              Container(width: 80,height: 16,child:Image(image: AssetImage("images/logo1.png"))),
              ]),
            ),

            // Text("Add New Recipient"),
            SizedBox(height: 9,),
            Container(margin: EdgeInsets.only(left: 16),child: Text("Chadwick Boseman",style:TextStyle(fontSize: 12,color:HexColor("#0B1D34")))),
            SizedBox(height:5),
            Container(margin: EdgeInsets.only(left: 16),child: Text("+6591876258",style:TextStyle(fontSize: 12,color:HexColor("#0B1D34"))))
          ],)
        )
      )
    );
  }
}