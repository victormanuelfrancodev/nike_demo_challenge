import 'package:flutter/material.dart';
import 'package:nike_demo_challenge/models/shoes.dart';

final listCategory = ['Basketball', 'Running','Traning'];

final listShoes = [
  Shoes('Air JORDAN 1 MID SE GC','NIKE AIR', '\$120.0',4, [
  ImageShoes('assets/shoes/1.png', Color(0xffEAA906),),
  ImageShoes('assets/shoes/2.png', Color(0xff088894),),
  ImageShoes('assets/shoes/3.png', Color(0xffB50D0D),),
  ImageShoes('assets/shoes/4.png', Color(0xff220054),),
]),
  Shoes('NIKE BLAZED MID', 'NIKE AIR','\$120.0',4, [
    ImageShoes('assets/shoes/22.png', Color(0xff088894),),
    ImageShoes('assets/shoes/11.png', Color(0xffEAA906),),
    ImageShoes('assets/shoes/22.png', Color(0xff088894),),
    ImageShoes('assets/shoes/44.png', Color(0xff220054),),
  ]),
  Shoes('ZoomX vaporfly', 'NIKE AIR','\$120.0',4, [
    ImageShoes('assets/shoes/333.png', Color(0xffB50D0D),),
    ImageShoes('assets/shoes/222.png', Color(0xff088894),),
    ImageShoes('assets/shoes/11.png', Color(0xffEAA906),),
    ImageShoes('assets/shoes/444.png', Color(0xff220054),),
  ]),
];