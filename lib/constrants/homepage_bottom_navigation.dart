import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_app/screens/HomePageScreen/HomePage.dart';

List<Widget> screen = [
  HomePage(),
  HomePage(),
  HomePage(),
  HomePage(),
  HomePage(),
];
int selectedIndex = 0;

class BottomBar extends StatefulWidget {
  const BottomBar({Key key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
        onTap: (index) {
          screen[index];
          print(index);
        },
        style: TabStyle.fixed,
        color: Colors.white,
        backgroundColor: Colors.orange,
        curveSize: 80,
        activeColor: Colors.black,
        items: [
          TabItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: "Home"),
          TabItem(
              icon: Icon(
                Icons.store,
                color: Colors.white,
              ),
              title: "Store"),
          TabItem(
              icon: Icon(
                Icons.qr_code_scanner,
                color: Colors.white,
                size: 40,
              ),
              title: "Scan QR"),
          TabItem(
              icon: Image.asset(
                "assets/images/rupee.png",
                color: Colors.white,
                height: 19.5,
                width: 19.5,
              ),
              title: "My Money"),
          TabItem(
              icon: Icon(
                CupertinoIcons.arrow_left_right_square,
                color: Colors.white,
              ),
              title: "History"),
        ]);
  }
}

// BottomNavigationBar bottomNavigationBar=BottomNavigationBar(
//   currentIndex: 0,
//     selectedItemColor: Colors.green,
// type: BottomNavigationBarType.fixed,
//
//     items: [
//       BottomNavigationBarItem(icon: Icon(Icons.home),
//       //title: Text("Home")
//         label: "Home"
//       ),
//       BottomNavigationBarItem(icon: Icon(Icons.store),
//         label: "Store"
//       ),
//       BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner),
//           label: "Scan QR"
//       ),
//       BottomNavigationBarItem(icon: Image.asset(
//             "assets/images/rupee.png",
//             height: 19.5,
//             width: 19.5,
//       ),
//           label: "My Money"
//       ),
//       BottomNavigationBarItem(icon: Icon(CupertinoIcons.arrow_left_right_square),
//           label: "History"
//       ),
//
//
//     ]);