import 'package:flutter/material.dart';
AppBar appBar=AppBar(
    backgroundColor: Colors.blue[700],
    elevation: 0,
    actions: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("assets/images/outline_account_circle.png",
                color: Colors.white,
                height: 40,
                width: 40,
              ),
              Padding(padding: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Location",style: TextStyle(
                      fontSize: 10,
                    ),),
                    Row(
                      children: [
                        Text("Lucknow",style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                        ),),
                        Icon(Icons.arrow_drop_down),
                      ],)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 15),
        child: Row(
          children: [
            Text("Rs.200",style: TextStyle(
                fontSize: 16
            ),),
            SizedBox(width: 10,),
            Image.asset("assets/images/notifications.png",
              color: Colors.white,
              height: 24,
              width: 24,),
            SizedBox(width: 10,),
            Image.asset(
              "assets/images/outline_help.png",
              color: Colors.white,
              height: 24,
              width: 24,
            ),
          ],
        ),
      ),
    ]
);