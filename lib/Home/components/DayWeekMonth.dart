import "package:flutter/material.dart";
import 'package:hexcolor/hexcolor.dart';

class DayWeekMonth extends StatefulWidget {
  @override
  _DayWeekMonthState createState() => _DayWeekMonthState();
}

class _DayWeekMonthState extends State<DayWeekMonth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(23, 0, 23, 0),
      child:Row(
        children: [
          Container(
          child: Container(
            alignment: Alignment.center,
            width:100,
            height:25,
               decoration: ShapeDecoration(
                  color: HexColor("#E9112A"),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, style: BorderStyle.solid, color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
            child:Text("Day",style:TextStyle(fontSize: 11,fontWeight: FontWeight.w400,color: Colors.white)) ,),),
            Expanded(child: Text(""),flex:1),
          Container(
          child: Container(
            alignment: Alignment.center,
            width:100,
            height:25,
               decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, style: BorderStyle.solid, color: HexColor("#4A5271")),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
            child:Text("Week",style:TextStyle(fontSize: 11,fontWeight: FontWeight.w400,color: Colors.black)) ,),),
            Expanded(child: Text(""),flex:1),
            Container(
            alignment: Alignment.center,
            width:100,
            height:25,
               decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, style: BorderStyle.solid, color: HexColor("#4A5271")),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
            child:Text("Month",style:TextStyle(fontSize: 11,fontWeight: FontWeight.w400,color: Colors.black)) ,),

        ],)
      
    );
  }
}