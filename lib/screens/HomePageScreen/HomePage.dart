import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_app/constrants/homepage_bottom_navigation.dart';
import 'package:payment_app/screens/HomePageScreen/component/insurence.dart';
import 'package:payment_app/screens/HomePageScreen/component/slider.dart';
import 'package:payment_app/screens/HomePageScreen/component/tab_option.dart';
import 'package:payment_app/screens/HomePageScreen/component/view_all_offer.dart';
import 'package:payment_app/constrants/homepage_appBar.dart';
import 'package:vertical_tabs/vertical_tabs.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.teal[100],
        appBar:appBar,
        bottomNavigationBar: BottomBar(),
        body: Container(
          //margin: EdgeInsets.only(top: 50),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/pay.jpg",),
                //fit: BoxFit.cover,
                repeat: ImageRepeat.repeat,
              )
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //SliderImage(),
                SizedBox(height: 180,),
                Container(
                    padding: EdgeInsets.only(top: 40),
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(30) ),
                    ),
                    // color: Colors.green[700],
                    margin: EdgeInsets.zero,
                    child: Column(
                      children: [
                        TabView1(),
                        // TransferMoney(),
                        // RechargeAndPayBill(),
                        ViewAllOffer(),
                        //SponseredLinks(),
                        SliderImage(),
                        Insurence(),
                      ],
                    )),

              ],
            ),
          ),
        )
    );
  }
}