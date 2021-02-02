import 'package:financial_demo/Home/components/SearchBar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({@required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        Container(
            color: HexColor("#4A5271"),
            child: Column(
              children: [
                Container(
                margin:EdgeInsets.only(top:48,left:26,right:26,bottom: 0),
                child: Row(
                  children:[
                    Expanded(flex: 1,
                    child:Container(
                      width:26,
                      height:26,
                      child:Image(image: AssetImage("images/t1.png"),)
                    )),
                    SizedBox(width:22),
                    Expanded(flex: 7,
                    child:Container(
                      child:SearchBar()
                    )),
                    SizedBox(width:22),
                    Expanded(flex: 1,
                    child:Container(
                      width:26,
                      height:26,
                      child:Image(image: AssetImage("images/t2.png"),)
                    )),
                  ]

                ),),
                Opacity(
                opacity: 1,
                                  child: Container(
                                    margin:EdgeInsets.only(top:(30 - shrinkOffset)<0?0:57 ),
                                    height:((25 - shrinkOffset)<0?0:20 ),
                    alignment: Alignment.center,
                    child:Text("\u0024 SG 000,0000,000.000",
                    style:TextStyle(
                      fontSize: 22,
                      color:Colors.white,
                      fontWeight: FontWeight.w400
                    ))
                  ),
                ),
                Opacity(
            opacity:1,
                                  child: Container(
                    alignment: Alignment.center,
                    margin:EdgeInsets.only(top:(30 - shrinkOffset)<0?0:5 ),
                    height:((25 - shrinkOffset)<0?0:20 ),
                    child:Text("Total balance",
                    style:TextStyle(
                      fontSize: 13,
                      color:Colors.white,
                      fontWeight: FontWeight.w300
                    ))
                  ),
                )
              ],
            ),
        ),
        // Image.network(
        //   "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        //   fit: BoxFit.cover,
        // ),
        // Center(
        //   child: Opacity(
        //     opacity: shrinkOffset / expandedHeight,
        //     child: Text(
        //       "MySliverAppBar",
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontWeight: FontWeight.w700,
        //         fontSize: 23,
        //       ),
        //     ),
        //   ),
        // ),
        Positioned(
          top: expandedHeight / 1.2 - shrinkOffset,
          
          left: MediaQuery.of(context).size.width *0.08,
          right: MediaQuery.of(context).size.width *0.08,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Card(
              elevation: 10,
              child: Center(
                child: Container(
                  height: 70,
                  // width: MediaQuery.of(context).size.width * 0.84,
                  // margin: EdgeInsets.only(left:34,right:34),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child:Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.fromLTRB(24, 10, 0, 0),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text("Total Incoming"),
                            SizedBox(height:6),
                            Row(children: [
                              Text(" + \u0024 00.00",
                              style:TextStyle(fontSize: 16,
                              color:Colors.black,
                              fontWeight: FontWeight.w400)),
                              SizedBox(width:8),
                              Container(
                                width:10,
                                height:15,
                                child:Image(image: AssetImage("images/t3.png"))
                              ),
                              
                            ],)

                          ],)
                        )),
                        Expanded(
                        flex: 1,
                        child:Container(
                          
                        )),
                      Expanded(
                        flex: 4,
                        child:Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.fromLTRB(24, 10, 0, 0),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text("Total Spending"),
                            SizedBox(height:6),
                            Row(children: [
                              Text(" + \u0024 00.00",
                              style:TextStyle(fontSize: 16,
                              color:Colors.black,
                              fontWeight: FontWeight.w400)),
                              SizedBox(width:8),
                              Container(
                                width:10,
                                height:15,
                                child:Image(image: AssetImage("images/t4.png"))
                              ),
                              
                            ],)

                          ],)
                        )),
                    ],
                    // margin: EdgeInsets.only(left:34,right:34),
                  ),
                ),
              ),
            ),
          ),
        ),
        
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 110;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}