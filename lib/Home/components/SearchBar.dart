import "package:flutter/material.dart";
import 'package:hexcolor/hexcolor.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
              height:40,
              // width:250,
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, style: BorderStyle.solid, color: HexColor("#E8F5F1")),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
              child:TextField(
                keyboardType: TextInputType.text,
                textAlign: TextAlign.left,
                
                style: TextStyle(fontSize: 15,color: HexColor("#7B788A"),decoration: TextDecoration.none ),
                decoration: InputDecoration(
                  
                  contentPadding: EdgeInsets.only(left:0,bottom:9),
                    icon: Icon(Icons.search_sharp,
                      color: HexColor("#2C3149"),
                      size: 22,
                    ),

                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(fontSize: 15,color: HexColor("#7B788A") )
                ),

              ),
    );
  }
}