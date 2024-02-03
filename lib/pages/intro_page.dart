import 'package:fl_shopping_cart/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // logo
          Padding(
            padding: const EdgeInsets.all(25),
            child: Image.asset(
              'lib/images/nike.png',
              height: 240,
            ),
          ),
          const SizedBox(
            height: 48,
          ),

          const Text(
            'Just Do it ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          // text
          const SizedBox(
            height: 24,
          ),
          const Text(
            'Brand new sneakers and custom kicks made with premium quality, ',
            style: TextStyle(color: Colors.grey, fontSize: 16),
            textAlign: TextAlign.center,
          ),

          const SizedBox(
            height: 48,
          ),

          // start now button
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage())),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12)),
              padding: const EdgeInsets.all(25),
              child: const Center(
                  child: Text(
                'Shop now',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
        ])),
      ),
    );
  }
}
