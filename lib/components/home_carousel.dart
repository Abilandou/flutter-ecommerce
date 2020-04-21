import 'package:flutter/material.dart';

import 'package:carousel_pro/carousel_pro.dart';

class HomeCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 200.0,
          child: new Carousel(
            boxFit:
                BoxFit.cover, //images should completely fill the carousel box
            images: [
              AssetImage('asset/images/jean1.jpeg'),
              AssetImage('asset/images/jean2.jpg'),
              AssetImage('asset/images/jean3.jpg'),
              AssetImage('asset/images/jean4.jpg'),
              AssetImage('asset/images/jean5.jpg'),
              AssetImage('asset/images/jean7.jpg'),
            ],
            autoplay: true,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 4.0,
            indicatorBgPadding: 2.0,
            dotColor: Colors.pink,

          ),
        );
  }
}
