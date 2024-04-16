import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btname;
  final Icon? icon;
  final Color? color;
  final TextStyle? textstyle;
  final VoidCallback? callback;

  RoundedButton({
    required this.btname,
    this.callback,
    this.color,
    this.icon,
    this.textstyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      child: icon != Null
          ? Row(children: [
              icon!,
              Text(
                btname,
                style: textstyle,
              )
            ])
          : Text(btname, style: textstyle),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      ),
    );
  }
}
