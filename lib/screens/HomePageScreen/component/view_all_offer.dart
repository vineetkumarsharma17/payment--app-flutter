import 'package:flutter/material.dart';

class ViewAllOffer extends StatelessWidget {
  const ViewAllOffer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/banking.png",
                      width: 40,
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        'View All\nOffers',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/ic_menu_invite.png",
                      width: 40,
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        'My\nRewards',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/ic_menu_invite.png",
                      width: 40,
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        'Refer & Earn\nUp to ₹1000',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}





// Card(
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(5.0),),
// margin: EdgeInsets.only(left: 8,right: 8,top: 5),
// child: Padding(
// padding: const EdgeInsets.only(top: 20,bottom: 20),
// child: Row(
// children: <Widget>[
// Expanded(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: <Widget>[
// Image.asset(
// "assets/images/banking.png",
// width: 40,
// height: 40,
// ),
// Padding(
// padding: const EdgeInsets.only(top: 2),
// child: Text(
// 'View All\nOffers',
// textAlign: TextAlign.center,
// ),
// ),
// ],
// ),
// ),
// Image.asset("assets/images/suggestions_strip.png"),
// Expanded(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: <Widget>[
// Image.asset(
// "assets/images/ic_menu_invite.png",
// color: Colors.orange[700],
// width: 43,
// height: 43,
// ),
// Padding(
// padding: const EdgeInsets.only(top: 2),
// child: Text(
// 'View My\nRewards',
// textAlign: TextAlign.center,
// ),
// ),
// ],
// ),
// ),
// Image.asset("assets/images/suggestions_strip.png"),
// Expanded(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: <Widget>[
// Image.asset(
// "assets/images/ic_menu_invite.png",
// //                          color: Colors.deepPurple[700],
// width: 43,
// height: 43,
// ),
// Padding(
// padding: const EdgeInsets.only(top: 2),
// child: Text(
// 'Refer & Earn\nUp to ₹1000',
// textAlign: TextAlign.center,
// ),
// ),
// ],
// ),
// )
// ],
// ),
// ),
// )
