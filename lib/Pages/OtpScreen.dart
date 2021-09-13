import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:payment_app/screens/HomePageScreen/HomePage.dart';

class OtpScreen extends StatelessWidget {
  final String mobile;
  const OtpScreen({Key key, this.mobile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OtpForm(
        mobileNum: mobile,
      ),
    );
  }
}

class OtpForm extends StatefulWidget {
  final String mobileNum;
  const OtpForm({Key key, this.mobileNum}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  String otpCode = '';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.message_rounded,
                size: 70,
                color: Colors.blue[800],
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 10),
                  child: Text(
                    "Verification Code",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  child: Text(
                    "Please enter the otp on your ${widget.mobileNum}",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                child: OTPTextField(
                  //obscureText: true,
                  onChanged: (val) => otpCode = val,
                  length: 5,
                  width: MediaQuery.of(context).size.width * 0.8,
                  textFieldAlignment: MainAxisAlignment.spaceEvenly,
                  fieldWidth: 48,
                  style: TextStyle(fontSize: 17),
                  fieldStyle: FieldStyle.underline,
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                    setState(() {
                      otpCode = pin;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Resend Otp",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
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
                              builder: (context) => HomePage()));
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
    );
  }
}
