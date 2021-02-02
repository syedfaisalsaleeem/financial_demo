import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
class DottedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      child:DottedBorder(
        radius: Radius.circular(8),
        borderType: BorderType.RRect,
        child:Container(
          width:142,
          height:112,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            // SizedBox(height:31),
            Text("Add New Recipient"),
            SizedBox(height: 10,),
            InkWell(
              child:Container(width:30,height:30,child: Image(image: AssetImage("images/add.png"),))
            )
          ],)
        )
      )
    );
  }
}