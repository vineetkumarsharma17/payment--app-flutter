import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransferMoney extends StatelessWidget {
  const TransferMoney({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
        // color: Colors.whi,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child:Column(
            children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Card(
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.contacts_outlined,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 10, left: 10, right: 5),
                                child: Text(
                                  "To Contact",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Card(
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.account_balance_outlined,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 10, left: 10, right: 5),
                                child: Text(
                                  "To Bank",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                          children: [
                            Icon(
                              Icons.account_balance_outlined,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 10, right: 5),
                              child: Text(
                                "To Bank",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Icon(
                              Icons.account_balance_outlined,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 2, bottom: 5, left: 10, right: 5),
                            child: Text(
                              " Check\nAccount\nBalance",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          ),
    );
  }
}
