import 'package:flutter/material.dart';

class list_view extends StatelessWidget {
  const list_view({super.key});

  @override
  Widget build(BuildContext context) {
    var arrNames = ['hamza', 'ali', 'khizer', 'ali', 'rabi', 'hamza'];

    return Container(
      width: 200,
      height: 300,
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return Row(
            children: [
              Column(
                children: [
                  Text(
                    arrNames[index],
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    arrNames[index],
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    arrNames[index],
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ],
          );
        },
        itemCount: arrNames.length,
        separatorBuilder: (context, index) {
          return Divider(
            height: 100,
            thickness: 2,
          );
        },
      ),
    );
  }
}
