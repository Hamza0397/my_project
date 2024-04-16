import 'package:flutter/material.dart';
import 'package:my_first_project/widgets/animated_button.dart';

class ab extends StatefulWidget {
  const ab({super.key});

  @override
  State<ab> createState() => _abState();
}

class _abState extends State<ab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginButton(
        width: 150,
        height: 50,
        onPressed: () {
          // Add your onPressed logic here
        },
      ),
    );
  }
}
