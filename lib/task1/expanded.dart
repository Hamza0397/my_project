import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class expand extends StatelessWidget {
  const expand({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 100,
          color: Colors.blue,
        ),
        Expanded(
          child: Container(
            width: 50,
            height: 100,
            color: Colors.green,
          ),
        ),
        Expanded(
          child: Container(
            width: 50,
            height: 100,
            color: Colors.orange,
          ),
        ),
        Expanded(
          child: Container(
            width: 50,
            height: 100,
            color: Colors.purple,
          ),
        ),
      ],
    );
  }
}
