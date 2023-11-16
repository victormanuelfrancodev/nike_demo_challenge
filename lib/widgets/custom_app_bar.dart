import 'package:flutter/material.dart';

class CustomBarApp extends StatelessWidget {
  const CustomBarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: kToolbarHeight,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox.square(
                dimension: 50,
                child: Image.asset('assets/shoes/logo.png'),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
