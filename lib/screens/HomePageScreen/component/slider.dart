import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class SliderImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/slideImg.jpg",),
              )
          ),
          //child: Image.asset("assets/images/slideImg.jpg",),
          margin: EdgeInsets.all(6.0),
        ),
        Container(
          alignment: Alignment.center,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red
          ),
          child: Text("Image Slider",style: TextStyle(
            color: Colors.white,
          ),),
          margin: EdgeInsets.all(6.0),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/slideImg.jpg",),
              )
          ),
          //child: Image.asset("assets/images/slideImg.jpg",),
          margin: EdgeInsets.all(6.0),
        ),
        Container(
          alignment: Alignment.center,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.orange
          ),
          child: Text("Image Slider",style: TextStyle(
            color: Colors.white,
          ),),
          margin: EdgeInsets.all(6.0),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/slideImg.jpg",),
              )
          ),
          //child: Image.asset("assets/images/slideImg.jpg",),
          margin: EdgeInsets.all(6.0),
        ),
        Container(
          alignment: Alignment.center,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green
          ),
          child: Text("Image Slider",style: TextStyle(
            color: Colors.white,
          ),),
          margin: EdgeInsets.symmetric(vertical: 10),
        ),

      ],
      options: CarouselOptions(
        height:140,
        //aspectRatio: 19/8,
        enlargeCenterPage: true,
        autoPlay: true,
        enableInfiniteScroll: true,
      ),
    );
  }
}
