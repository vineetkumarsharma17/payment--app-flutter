import 'package:flutter/material.dart';
//import 'package:payment_app/Pages/LoginPage.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:payment_app/Pages/LoginPage.dart';

class SliderScreen extends StatefulWidget {
  SliderScreen({Key key}) : super(key: key);

  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  int currentPage = 0;
  List splashData = [
    "assets/images/slider_1.png",
    "assets/images/slider_11.jpeg",
    "assets/images/slider_2.png",
    "assets/images/slider_3.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Vertical sliding carousel demo')),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                      autoPlay: true,
                    ),
                    //carouselController: _controller,
                    items: splashData
                        .map(
                          (item) => Container(
                            child: Center(
                                child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                              height: 300,
                            )),
                          ),
                        )
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // Container(
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: splashData.map((url) {
                //       int index = splashData.indexOf(url);
                //       return Container(
                //         width: 8.0,
                //         height: 8.0,
                //         margin: EdgeInsets.symmetric(
                //             vertical: 10.0, horizontal: 2.0),
                //         decoration: BoxDecoration(
                //           shape: BoxShape.circle,
                //           color: currentPage == index
                //               ? Color.fromRGBO(0, 0, 0, 0.9)
                //               : Color.fromRGBO(0, 0, 0, 0.4),
                //         ),
                //       );
                //     }).toList(),
                //   ),
                // ),
                // SizedBox(
                //   height: 30,
                // ),
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
                                builder: (context) => LoginPage()));
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

  // AnimatedContainer buildDot({int index}) {
  //   return AnimatedContainer(
  //     duration: Duration(milliseconds: 200),
  //     margin: EdgeInsets.only(right: 5),
  //     height: 10,
  //     width: currentPage == index ? 20 : 6,
  //     decoration: BoxDecoration(
  //       color: currentPage == index ? Color(0xFF4548F8) : Color(0xFFD8D8D8),
  //       borderRadius: BorderRadius.circular(3),
  //     ),
  //   );
  // }
}
