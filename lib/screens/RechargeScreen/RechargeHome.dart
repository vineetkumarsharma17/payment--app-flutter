import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:my_money/screens/HomePageScreen/component/slider.dart';
//import 'package:my_money/screens/RechargeScreen/fetch_contact.dart';
import 'package:payment_app/screens/HomePageScreen/component/slider.dart';
import 'package:payment_app/screens/RechargeScreen/fetch_contact.dart';
import 'package:permission_handler/permission_handler.dart';

class RechargeHome extends StatefulWidget {
  const RechargeHome({Key key}) : super(key: key);

  @override
  _RechargeHomeState createState() => _RechargeHomeState();
}

class _RechargeHomeState extends State<RechargeHome> {
  Future<PermissionStatus> _getPermission() async {
    final PermissionStatus permission = await Permission.contacts.status;
    if (permission != PermissionStatus.granted &&
        permission != PermissionStatus.denied) {
      final Map<Permission, PermissionStatus> permissionStatus =
          await [Permission.contacts].request();
      return permissionStatus[Permission.contacts] ??
          PermissionStatus.undetermined;
    } else {
      return permission;
    }
  }

  TextEditingController mobile = TextEditingController();
  TextEditingController amount = TextEditingController();
  var operator;
  var circle;
  List<String> circleName = [
    "Uttar Pradesh East",
    "Tamilnadu",
    "Punjab",
    "Assam",
    "Bihar & Jharkhand",
    "Chennai",
    "Gujrat"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: Text("Select a recharge plan"),
        actions: [
          Padding(padding: EdgeInsets.only(right: 20), child: Icon(Icons.help)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SliderImage(),
            SizedBox(
              height: 20,
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.white,
                        border: Border.all(color: Colors.black12),
                      ),
                      child: TextFormField(
                        enableSuggestions: true,
                        keyboardType: TextInputType.number,
                        controller: mobile,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.phone_android),
                            hintText: "Enter Mobile Number"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 40,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(left: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: Colors.white,
                                border: Border.all(color: Colors.black12),
                              ),
                              child: DropdownButton<String>(
                                isExpanded: true,
                                underline: SizedBox(),
                                hint: Text("Select Operators"),
                                items: circleName
                                    .map((String item) =>
                                        DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(item),
                                        ))
                                    .toList(),
                                value: operator,
                                onChanged: (String value) {
                                  setState(() {
                                    operator = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 40,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(left: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: Colors.white,
                                border: Border.all(color: Colors.black12),
                              ),
                              child: DropdownButton<String>(
                                isExpanded: true,
                                underline: SizedBox(),
                                hint: Text("Select Circle"),
                                items: <String>[
                                  "Uttar Pradesh East",
                                  "Tamilnadu",
                                  "Punjab",
                                  "Assam",
                                  "Bihar & Jharkhand",
                                  "Chennai",
                                  "Gujrat"
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    child: ListTile(
                                      title: Text(
                                        value,
                                        style: TextStyle(),
                                      ),
                                      leading: Icon(Icons.home),
                                    ),
                                    value: value,
                                  );
                                }).toList(),
                                value: circle,
                                onChanged: (String value) {
                                  setState(() {
                                    circle = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        height: 60,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.white,
                          border: Border.all(color: Colors.black12),
                        ),
                        child: TextFormField(
                          onChanged: (value) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ContactsPage()));
                          },
                          keyboardType: TextInputType.number,
                          controller: amount,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: Image.asset(
                                "assets/images/rupee.png",
                                height: 25,
                                width: 25,
                                color: Colors.black54,
                              ),
                              hintText: "Enter Amount"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.blue[700],
                border: Border.all(color: Colors.black12),
              ),
              child: Expanded(
                  child: ElevatedButton(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size.infinite),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue[700]),
                    elevation: MaterialStateProperty.all(0)),
                child: Text(
                  "Proceed",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                onPressed: () async {
                  final PermissionStatus permissionStatus =
                      await _getPermission();
                  if (permissionStatus == PermissionStatus.granted) {
                    print("Permission Granted");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactsPage()));
                    //We can now access our contacts here
                  } else {
                    //If permissions have been denied show standard cupertino alert dialog
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => CupertinoAlertDialog(
                              title: Text('Permissions error'),
                              content: Text('Please enable contacts access '
                                  'permission in system settings'),
                              actions: <Widget>[
                                CupertinoDialogAction(
                                  child: Text('OK'),
                                  onPressed: () => Navigator.of(context).pop(),
                                )
                              ],
                            ));
                  }
                },
              )),
            )
          ],
        ),
      ),
    );
  }
}
