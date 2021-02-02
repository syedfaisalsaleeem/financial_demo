import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Home/MainHome.dart';
import 'package:financial_demo/Home/MainHome.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainHome1(),
    );
  }
}




// import 'custom-widget-tabs.widget.dart';
// import 'screens.dart';

// void main() => runApp(MyApp());

class MainHome1 extends StatelessWidget {
  const MainHome1({Key key}) : super(key: key);

    List<Widget> _buildScreens() {
        return [
        MainHome(),
        Center(child:Text("Invest")),
        Center(child:Text("PayNow")),
        Center(child:Text("Market Place")),
        Center(child:Text("Deals")),
        ];
    }
    
    List<PersistentBottomNavBarItem> _navBarsItems() {
        return [
            PersistentBottomNavBarItem(
              contentPadding: 0,
                icon: Container(width:35,height:35,child: Image(image: AssetImage("images/home.png"))) ,
                title: ("Home"),
                activeColor: HexColor("#E9112A"),
                inactiveColor: HexColor("#0B1D34"),
            ),
            PersistentBottomNavBarItem(
              // iconSize: 100,
              contentPadding: 0,
                icon: Container(width:35,height:35,child: Image(image: AssetImage("images/invest.png"))) ,
                title: ("Invest"),
                activeColor: HexColor("#E9112A"),
                inactiveColor: HexColor("#0B1D34"),
            ),
                        PersistentBottomNavBarItem(
              contentPadding: 0,
                icon: Container(child: Image(image: AssetImage("images/paynow.png"))) ,
                title: ("Pay Now"),
                activeColor: HexColor("#465173"),
                inactiveColor: HexColor("#0B1D34"),
            ),
            PersistentBottomNavBarItem(
              contentPadding: 0,
                icon: Container(width:35,height:35,child: Image(image: AssetImage("images/marketplace.png"))) ,
                title: ("Market Place"),
                activeColor: HexColor("#E9112A"),
                inactiveColor: HexColor("#0B1D34"),
            ),
                        PersistentBottomNavBarItem(
              contentPadding: 0,
                icon: Container(width:35,height:35,child: Image(image: AssetImage("images/deals.png"))) ,
                title: ("Deals"),
                activeColor: HexColor("#E9112A"),
                inactiveColor: HexColor("#0B1D34"),
            ),

        ];
    }
  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

_controller = PersistentTabController(initialIndex: 0);

    return 
    Scaffold(
          body: PersistentTabView(
          context,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          navBarHeight: 80,
          confineInSafeArea: true,
          backgroundColor: Colors.white,
          handleAndroidBackButtonPress: true,
          resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears.
          stateManagement: true,
          hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument.
          decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
          ),
          screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle.style15, // Choose the nav bar style with this property.
      ),
    );
  }
}