import 'package:flutter/material.dart';
import 'package:my_first_project/hero_animation/second_page.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => page2(),
                  ));
            },
            child: Hero(
              tag: 'background',
              child: Image.asset(
                'images/sunflower.jpg',
                width: 200,
                height: 150,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
