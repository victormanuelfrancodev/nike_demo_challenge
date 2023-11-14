import 'package:flutter/material.dart';

class CustomBarApp extends StatelessWidget {
  const CustomBarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight + 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(child: Image.asset('assets/shoes/logo.png'),width: 30,height: 30,),
            Row(
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.menu, color: Colors.white,)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_bag_outlined, color: Colors.white)),
              ],
            )
          ],
        ),
      )
    );
  }
}
