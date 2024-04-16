import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          Hero(tag: 'background', child: Image.asset('images/sunflower.jpg')),
    );
  }
}
