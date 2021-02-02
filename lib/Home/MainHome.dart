import 'package:financial_demo/Home/components/YourProducts.dart';
import 'package:flutter/material.dart';

import 'components/SendMoney.dart';
import 'components/TopBar.dart';
import 'components/TransactionHistory.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: MySliverAppBar(expandedHeight: 260),
              pinned: true,
            ),
            SliverList(
                  delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Column(
                      children: [
                        SizedBox(height:25),
                        TransactionHistory(),
                        SizedBox(height:25),
                        SendMoney(),
                        SizedBox(height:25),
                        YourProducts(),
                        SizedBox(height:25),
                      ],
                      
                    );
                  },
                  childCount: 1,
                ),
            )
          ],
);
  }
}