import 'package:flutter/material.dart';

class custom_textfield extends StatelessWidget {
  var Twidth;
  var Thight;
  final String? Thint;
  final Icon? Tprefixicon;

  custom_textfield(
      {super.key, this.Twidth, this.Thight, this.Thint, this.Tprefixicon});

  @override
  Widget build(BuildContext context) {
    var uinput = TextEditingController();

    return Card(
      elevation: 5,
      color: Colors.white,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: SizedBox(
        height: Thight,
        width: Twidth,
        child: TextField(
          controller: uinput,
          style: TextStyle(fontSize: 13),
          decoration: InputDecoration(
            hintText: '${Thint}',
            hintStyle: TextStyle(
              fontSize: 13,
            ),
            prefixIcon: Tprefixicon,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: Colors.white, width: 3.0),
              // borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: Colors.white, width: 3.0),
            ),
            contentPadding: EdgeInsets.all(8),
            isDense: true,
          ),
        ),
      ),
    );
  }
}
