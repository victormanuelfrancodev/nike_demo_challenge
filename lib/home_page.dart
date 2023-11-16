import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nike_demo_challenge/models/data.dart';
import 'package:nike_demo_challenge/models/shoes.dart';
import 'package:nike_demo_challenge/page/detail_shoe_page.dart';
import 'package:nike_demo_challenge/widgets/custom_app_bar.dart';
import 'package:nike_demo_challenge/widgets/custom_bottom_bar.dart';

class HomePageShoes extends StatefulWidget {
  const HomePageShoes({Key? key}) : super(key: key);

  @override
  State<HomePageShoes> createState() => _HomePageShoesState();
}

class _HomePageShoesState extends State<HomePageShoes> {
  late final pageController = PageController(viewportFraction: 0.75)
    ..addListener(listener);
  late final currentPage = ValueNotifier<double>(0);
  int indexPage = 0;

  void listener() => currentPage.value = pageController.page!;
  Color getColor() => listShoes[indexPage].listImage[0].color;

  @override
  void dispose() {
    pageController
      ..removeListener(listener)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomBarApp(),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: List.generate(
                  listCategory.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: ValueListenableBuilder<double>(
                      valueListenable: currentPage,
                      builder: (_, current, ___) => Text(
                        listCategory[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: index == indexPage ? getColor() : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ValueListenableBuilder<double>(
              valueListenable: currentPage,
              builder: (_, current, child) => PageView.builder(
                controller: pageController,
                itemCount: listShoes.length,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (value) => indexPage = value,
                itemBuilder: (_, index) {
                  final shoes = listShoes[index];
                  final listTitle = shoes.category.split(' ');
                  final value = lerpDouble(0, 1, (index - current).abs())!;
                  return ShoesItemWidget(
                    shoes: shoes,
                    value: value,
                    listTitle: listTitle,
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ValueListenableBuilder<double>(
                valueListenable: currentPage,
                builder: (_, __, ___) => CustomBottomBar(color: getColor()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ShoesItemWidget extends StatelessWidget {
  const ShoesItemWidget({
    required this.shoes,
    required this.value,
    required this.listTitle,
    Key? key,
  }) : super(key: key);

  final Shoes shoes;
  final double value;
  final List<String> listTitle;

  @override
  Widget build(BuildContext context) {
    const gap4 = SizedBox(height: 4);
    const gap8 = SizedBox(height: 8);
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        PageRouteBuilder<void>(
          pageBuilder: (_, animation, ___) => FadeTransition(
            opacity: animation,
            child: DetailShoePage(shoes: shoes),
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(right: (30 * value) + 30),
        child: Transform.translate(
          offset: Offset(20 * value, 0),
          child: LayoutBuilder(
            builder: (_, constraints) => Container(
              margin: EdgeInsets.only(top: 80 * value),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36),
                color: Colors.white,
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 40,
                      horizontal: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          shoes.category,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        gap8,
                        Text(
                          shoes.name,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20 + (4 * (1 - value)),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        gap4,
                        Text(
                          shoes.price,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        gap4,
                        FittedBox(
                          child: Text(
                            '${listTitle[0]} \n ${listTitle[1]}',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: constraints.maxWidth * 0.05,
                    top: constraints.maxHeight * 0.2,
                    right: -constraints.maxWidth * 0.16,
                    bottom: constraints.maxHeight * 0.2,
                    child: Hero(
                      tag: shoes.name,
                      child: Image(
                        image: AssetImage(shoes.listImage[0].image),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Material(
                      color: shoes.listImage[0].color,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        onTap: () {},
                        child: const SizedBox(
                          width: 100,
                          height: 100,
                          child: Icon(Icons.add, size: 40),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
