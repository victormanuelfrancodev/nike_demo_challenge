import 'package:flutter/material.dart';
import 'package:nike_demo_challenge/models/shoes.dart';
import 'package:nike_demo_challenge/widgets/custom_button.dart';
import 'package:nike_demo_challenge/widgets/transition.dart';

class DetailShoePage extends StatefulWidget {
  const DetailShoePage({Key? key, required this.shoes}) : super(key: key);

  final Shoes shoes;
  @override
  _DetailShoePageState createState() => _DetailShoePageState();
}

class _DetailShoePageState extends State<DetailShoePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: Stack(children: [
      Positioned(
          top: -size.height * 0.15,
          right: -size.height * 0.20,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            height: size.height * 0.5,
            width: size.height * 0.5,
            decoration: BoxDecoration(
              color: widget.shoes.listImage[0].color,
              shape: BoxShape.circle,
            ),
          )),
      Positioned(
        top: kToolbarHeight,
        left: 16,
        right: 16,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomButton(
              onTap: () => Navigator.pop(context),
              child: const Icon(Icons.arrow_back_rounded, color: Colors.black),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite, color: Colors.white))
          ],
        ),
      ),
      Positioned(
          right: 0,
          left: 0,
          top: size.height * 0.20,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: FittedBox(
              child: Text(widget.shoes.category,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[100],
                  )),
            ),
          )),
      Positioned(
          top: size.height * 0.22,
          right: size.height * 0.07,
          left: size.height * 0.07,
          child: Hero(
            tag: widget.shoes.name,
            child: Image(
                image: AssetImage(
              widget.shoes.listImage[0].image,
            )),
          )),
      Positioned(
        top: 430,
        left: 16,
        right: 16,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ShakeTransition(
                  duration: const Duration(milliseconds: 500),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.shoes.category,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(widget.shoes.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                ShakeTransition(
                  duration: const Duration(milliseconds: 500),
                  child: Text(widget.shoes.price,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white,
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    ]));
  }
}
