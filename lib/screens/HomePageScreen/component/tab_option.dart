import 'package:flutter/material.dart';
import 'package:payment_app/screens/HomePageScreen/component/recharge_and_pay_bill.dart';
import 'package:payment_app/screens/HomePageScreen/component/sponserd_link.dart';
import 'package:payment_app/screens/HomePageScreen/component/transfer_money.dart';
import 'package:vertical_tabs/vertical_tabs.dart';
class TabView1 extends StatefulWidget {
  const TabView1({Key key}) : super(key: key);

  @override
  _TabView1State createState() => _TabView1State();
}

class _TabView1State extends State<TabView1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin: EdgeInsets.only(left: 8, right: 8, top: 5),
      decoration: BoxDecoration(
        //border: Border.all(color: Colors.black,width: 2),
          borderRadius: BorderRadius.circular(5),
          color: Colors.white
      ),
      child: Card(
        //color: Colors.white,
        margin: EdgeInsets.all(10),
        elevation: 0,
        child: VerticalTabs(
          backgroundColor: Colors.white,
          contentScrollAxis: Axis.vertical,
          //selectedTabBackgroundColor: Colors.blue[200],
          tabsElevation: 0,
          indicatorSide: IndicatorSide.end,
          disabledChangePageFromContentView: true,
          indicatorColor: Colors.blue,
          selectedTabBackgroundColor:const Color(95277952),
          tabBackgroundColor: const Color(4294506744),
          tabTextStyle: const TextStyle(
            color: Colors.red
          ),

          tabsWidth: MediaQuery.of(context).size.width*.25,
          tabs: [
            Tab(child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                  child: Text("Transfer Money")),
            ),),
            Tab(child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                //margin: EdgeInsets.only(top: 10),
                  child: Text("Recharge And Pay bill")),
            ),),
            Tab(child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                //margin: EdgeInsets.only(top: 10),
                  child: Text("Sponsered Links")),
            ),),
            Tab(child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                //margin: EdgeInsets.only(top: 10),
                  child: Text("Recharge And Pay bill")),
            ),),

          ],
          contents: <Widget>[
            TransferMoney(),
            RechargeAndPayBill(),
            SponseredLinks(),
            RechargeAndPayBill(),
          ],
        ),
      ),

    );
  }
}
