import 'package:flutter/material.dart';
import 'package:payment_app/Pages/OtpScreen.dart';

class MobileNumberSearch extends StatefulWidget {
  MobileNumberSearch({Key key}) : super(key: key);

  @override
  _MobileNumberSearchState createState() => _MobileNumberSearchState();
}

class _MobileNumberSearchState extends State<MobileNumberSearch> {
  TextEditingController _mobileController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: const Image(
                    image: AssetImage('assets/images/mobile_Icon.png'),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: TextFormField(
                      controller: _mobileController,
                      maxLength: 10,
                      buildCounter: (BuildContext context,
                              {int currentLength,
                              int maxLength,
                              bool isFocused}) =>
                          null,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.phone_outlined,
                          color: Colors.blueGrey,
                          size: 24,
                        ),
                        hintText: "Enter Mobile Number",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      //onChanged: (val) => _password = val,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Material(
                    //elevation: 10,
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(15),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: ButtonTheme(
                        minWidth: double.infinity,
                        child: MaterialButton(
                          onPressed: () {
                            //loginForm();
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => OtpScreen()));
                          },
                          child: Text(
                            "Continue",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
