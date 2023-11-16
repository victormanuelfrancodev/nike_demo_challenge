import 'package:flutter/material.dart';
import 'package:nike_demo_challenge/models/shoes.dart';

final listCategory = ['Lecciones', 'Cartas', 'Diccionario'];

final listShoes = [
  Shoes('Encuentra Lecciones de Japones', 'Lecciones N5', '', 4, [
    ImageShoes(
      'assets/shoes/libro.png',
      const Color(0xffEAA906),
    ),
    ImageShoes(
      'assets/shoes/2.png',
      const Color(0xff088894),
    ),
    ImageShoes(
      'assets/shoes/3.png',
      const Color(0xffB50D0D),
    ),
    ImageShoes(
      'assets/shoes/4.png',
      const Color(0xff220054),
    ),
  ]),
  Shoes('Cartas para jugar', 'Colección de cartas', '', 4, [
    ImageShoes(
      'assets/shoes/card2.png',
      const Color(0xff088894),
    ),
    ImageShoes(
      'assets/shoes/11.png',
      const Color(0xffEAA906),
    ),
    ImageShoes(
      'assets/shoes/22.png',
      const Color(0xff088894),
    ),
    ImageShoes(
      'assets/shoes/44.png',
      const Color(0xff220054),
    ),
  ]),
  Shoes('Diccionario ES-JP', 'Español Japones', '', 4, [
    ImageShoes(
      'assets/shoes/librodiccionario.png',
      const Color(0xffB50D0D),
    ),
    ImageShoes(
      'assets/shoes/222.png',
      const Color(0xff088894),
    ),
    ImageShoes(
      'assets/shoes/11.png',
      const Color(0xffEAA906),
    ),
    ImageShoes(
      'assets/shoes/444.png',
      const Color(0xff220054),
    ),
  ]),
];
