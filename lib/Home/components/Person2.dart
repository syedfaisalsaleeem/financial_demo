import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class Person2 extends StatelessWidget {
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
              Container(width:30,height:30,child:Image(image: AssetImage("images/rb.png"),)),
              SizedBox(width:0),
              Container(width: 57,height: 30,child:Image(image: AssetImage("images/logo2.png"))),
              ]),
            ),

            // Text("Add New Recipient"),
            SizedBox(height: 9,),
            Container(margin: EdgeInsets.only(left: 16),child: Text("Rajesh Buhair",style:TextStyle(fontSize: 12,color:HexColor("#0B1D34")))),
            SizedBox(height:5),
            Container(margin: EdgeInsets.only(left: 16),child: Text("+6591876258",style:TextStyle(fontSize: 12,color:HexColor("#0B1D34"))))
          ],)
        )
      )
    );
  }
}