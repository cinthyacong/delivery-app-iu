import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 170,
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: [
          Container(
            width: 400,
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEKgGdr29b9v3kFCwTab1ljYUdkQXllas0Hg&usqp=CAU",
              // fit: BoxFit.fill,
            ),
          ),
          Container(
              width: 400,
              child: Image.network(
                "https://dmkz2i5qfmsty.cloudfront.net/b8fa59bb-64df-4632-b26d-944291796e1a.jpg",
                // fit: BoxFit.fill,
              )),
          Container(
              width: 400,
              child: Image.network(
                  "https://dmkz2i5qfmsty.cloudfront.net/0e16ac69-667c-4fe9-bb6f-08f3a2be8ef5.jpg"))
        ],
      ),
    );
  }
}
