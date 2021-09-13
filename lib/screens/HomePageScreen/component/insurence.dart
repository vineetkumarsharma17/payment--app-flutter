import 'package:flutter/material.dart';
class Insurence extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),),
      margin: EdgeInsets.only(left: 8,right: 8,top: 5,bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              'Insurence',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.only(left: 15, top: 15),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0,bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/images/zomato.png",
                        width: 40,
                        height: 40,),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          "Zomato",
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
                      Image.asset("assets/images/book.png",
                        width: 30,
                        height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          "RummyCircle",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),),
                Expanded(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/images/book.png",
                        width: 30,
                        height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          "Domino's",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),),
                Expanded(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/images/book.png",
                        width: 30,
                        height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          "Swiggy",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0,bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/images/zomato.png",
                        width: 40,
                        height: 40,),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          "Zomato",
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
                      Image.asset("assets/images/book.png",
                        width: 30,
                        height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          "RummyCircle",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),),
                Expanded(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/images/book.png",
                        width: 30,
                        height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          "Domino's",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),),
                Expanded(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/images/book.png",
                        width: 30,
                        height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          "Swiggy",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
