import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:payment_app/Pages/MobilePage.dart';
import 'package:payment_app/Pages/SignUpPage.dart';
import 'package:payment_app/screens/HomePageScreen/HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isOtpBoxEnable = false;
  String pinLogin = '';
  TextEditingController _mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: SingleChildScrollView(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/racepayLogo.jpeg"),
                    radius: 50,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[700],
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Login to continue with Race Pay",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 100,
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
                        //fillColor: Colors.white,
                        //filled: true,
                        icon: Icon(
                          Icons.phone_outlined,
                          color: Colors.blueGrey,
                          size: 24,
                        ),
                        //border: InputBorder.none,
                        hintText: "Enter Mobile Number",
                        // prefix: Padding(
                        //   padding: const EdgeInsets.only(left: 5, right: 6),
                        //   child: Text('+91'),
                        // ),
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
                        onChanged: (val) => pinLogin = val,
                        obscureText: true,
                        length: 5,
                        width: MediaQuery.of(context).size.width * 0.7,
                        textFieldAlignment: MainAxisAlignment.spaceEvenly,
                        fieldWidth: 48,
                        style: TextStyle(fontSize: 17),
                        fieldStyle: FieldStyle.underline,
                        onCompleted: (pin) {
                          print("Completed: " + pin);
                          setState(() {
                            pinLogin = pin;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Material(
                    //elevation: 10,
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.circular(15),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: ButtonTheme(
                        minWidth: double.infinity,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HomePage()));
                          },
                          child: Text(
                            "Login In",
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
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MobileNumberSearch()));
                      },
                      child: Text(
                        "Login with Otp",
                        style: TextStyle(
                          color: Colors.blue[700],
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
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
                "Don't Have an account?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.blue[700],
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
