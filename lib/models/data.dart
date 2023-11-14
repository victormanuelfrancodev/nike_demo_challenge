import 'package:flutter/material.dart';
import 'package:nike_demo_challenge/models/shoes.dart';

final listCategory = ['Lecciones', 'Cartas','Diccionario'];

final listShoes = [
  Shoes('Encuentra Lecciones de Japones','Lecciones N5', '',4, [
  ImageShoes('assets/shoes/libro.png', Color(0xffEAA906),),
  ImageShoes('assets/shoes/2.png', Color(0xff088894),),
  ImageShoes('assets/shoes/3.png', Color(0xffB50D0D),),
  ImageShoes('assets/shoes/4.png', Color(0xff220054),),
]),
  Shoes('Cartas para jugar', 'Colección de cartas','',4, [
    ImageShoes('assets/shoes/card2.png', Color(0xff088894),),
    ImageShoes('assets/shoes/11.png', Color(0xffEAA906),),
    ImageShoes('assets/shoes/22.png', Color(0xff088894),),
    ImageShoes('assets/shoes/44.png', Color(0xff220054),),
  ]),
  Shoes('Diccionario ES-JP', 'Español Japones','',4, [
    ImageShoes('assets/shoes/librodiccionario.png', Color(0xffB50D0D),),
    ImageShoes('assets/shoes/222.png', Color(0xff088894),),
    ImageShoes('assets/shoes/11.png', Color(0xffEAA906),),
    ImageShoes('assets/shoes/444.png', Color(0xff220054),),
  ]),
];