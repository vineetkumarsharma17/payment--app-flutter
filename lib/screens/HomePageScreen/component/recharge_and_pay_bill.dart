import 'package:flutter/material.dart';
import 'package:payment_app/screens/RechargeScreen/RechargeHome.dart';

class RechargeAndPayBill extends StatefulWidget {

  @override
  _RechargeAndPayBillState createState() => _RechargeAndPayBillState();
}

class _RechargeAndPayBillState extends State<RechargeAndPayBill> {
  var payItemImg = [
    "assets/images/recharge.png",
    "assets/images/dth.png",
    "assets/images/electricity.png",
    "assets/images/creditcard.png",
    "assets/images/postpaid.png",
    "assets/images/landline.png",
    "assets/images/broadband.png",
    "assets/images/gas.png",
    "assets/images/water.png",
    "assets/images/datacard.png",
    "assets/images/insurance.png",
    "assets/images/muncipaltax.png",
    "assets/images/googleplay.png",
    "assets/images/giftcardd.png",
  ];

  var payItemTitle = [
    "Recharge",
    "DTH",
    "Electricity",
    "Credit Card",
    "Postpaid",
    "Landline",
    "Broadband",
    "Gas",
    "Water",
    "Datacard",
    "Insurence",
    "Municipal\nTax",
    "Google Play",
    "Buy Gift\nCards"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Container(
          //   width: MediaQuery.of(context).size.width,
          //   child: Text(
          //     'Recharge and Pay Bills',
          //     style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          //   ),
          //   padding: EdgeInsets.only(left: 15, top: 15),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RechargeHome()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        payItemImg[0],
                        width: 30,
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          payItemTitle[0],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      payItemImg[1],
                      width: 30,
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        payItemTitle[1],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      payItemImg[2],
                      width: 30,
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        payItemTitle[2],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      payItemImg[3],
                      width: 30,
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        payItemTitle[3],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        payItemImg[4],
                        width: 30,
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          payItemTitle[4],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        payItemImg[5],
                        width: 30,
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          payItemTitle[5],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        payItemImg[6],
                        width: 30,
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          payItemTitle[6],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        payItemImg[7],
                        width: 30,
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          payItemTitle[7],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        payItemImg[8],
                        width: 30,
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          payItemTitle[8],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        payItemImg[9],
                        width: 30,
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          payItemTitle[9],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        payItemImg[10],
                        width: 30,
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          payItemTitle[10],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        payItemImg[11],
                        width: 30,
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          payItemTitle[11],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
