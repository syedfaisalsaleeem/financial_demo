import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TransactionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
    
          child: Container(
        alignment: Alignment.topCenter,
        width:368,
        height:305,
        child:ListView.builder(
          padding: EdgeInsets.all(0),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index){
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Container(

                            child: ListTile(trailing: Text("+000,000.00",style: TextStyle(fontSize: 13,color:HexColor("#0B1D34"),fontWeight: FontWeight.w400)),title: Text("Transaction Title",style: TextStyle(fontSize: 12,color:HexColor("#0B1D34"),fontWeight: FontWeight.w400)),
                            subtitle: Text("00:00 AM/PM",style: TextStyle(fontSize: 10,color:HexColor("#0B1D34"),fontWeight: FontWeight.w300)),),
                            
                          ),
                      Container(
                      decoration: BoxDecoration(
                      border:Border(
                          bottom: BorderSide(
                              color: HexColor("#E5E5E5")
                          )
                      )
                  ),)
                      ],
                    );
                  },
                )
      ),
    );
  }
}