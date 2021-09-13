import 'package:flutter/material.dart';
import 'package:payment_app/Pages/LoginPage.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:payment_app/Pages/OtpScreen.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _mobileNumber = new TextEditingController();
  TextEditingController _userName = new TextEditingController();

  String pinPass = '';
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
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Text(
                      "Create An Account",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[700],
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: TextFormField(
                      controller: _mobileNumber,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.phone_outlined,
                          color: Colors.blueGrey,
                          size: 24,
                        ),
                        //border: InputBorder.none,
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
                  height: 20,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: TextFormField(
                      controller: _userName,

                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Colors.blueGrey,
                          size: 24,
                        ),
                        //border: InputBorder.none,
                        hintText: "Enter Full Name",
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
                  height: 20,
                ),
                Row(
                  //width: MediaQuery.of(context).size.width * 0.66,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Icon(
                        Icons.lock_outline_rounded,
                        color: Colors.blueGrey,
                        size: 24,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: OTPTextField(
                        obscureText: true,
                        onChanged: (val) => pinPass = val,
                        length: 5,
                        width: MediaQuery.of(context).size.width * 0.7,
                        textFieldAlignment: MainAxisAlignment.spaceEvenly,
                        fieldWidth: 48,
                        style: TextStyle(fontSize: 17),
                        fieldStyle: FieldStyle.underline,
                        onCompleted: (pin) {
                          print("Completed: " + pin);
                          setState(() {
                            pinPass = pin;
                          });
                        },
                      ),
                    ),
                  ],
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
                                builder: (context) =>
                                    OtpScreen(mobile: _mobileNumber.text)));
                          },
                          child: Text(
                            "Sign Up",
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
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
