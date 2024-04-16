import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listtile extends StatelessWidget {
  const listtile({super.key});

  @override
  Widget build(BuildContext context) {
    var arrayNames = [
      'hamza',
      'ahmed',
      'ali',
      'khizer',
      'rabi',
      'hamza',
      'ahmed',
      'ali',
      'khizer',
      'rabi'
    ];
    var age = [
      'age : 2',
      'age : 5',
      'age : 10',
      'age : 2',
      'age : 2',
      'age : 2',
      'age : 2',
      'age : 2',
      'age : 2',
      'age : 2'
    ];
    return ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 40,
              // child: Text(
              //   'hgd',
              //   style: TextStyle(color: Colors.white),
              // ),
              backgroundImage: AssetImage('images/sunflower.jpg'),
              // backgroundColor: Colors.greenAccent,
            ),
            // Text('${index + 1}'),
            title: Text(
              arrayNames[index],
              style: TextStyle(fontFamily: 'font1'),
            ),
            subtitle: Text(age[index]),
            trailing: InkWell(
              child: Icon(Icons.add),
              onTap: () {},
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: arrayNames.length);
  }
}
