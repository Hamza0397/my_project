import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:my_first_project/dashboard/contact.dart';
import 'package:my_first_project/dashboard/dashboard.dart';
import 'package:my_first_project/dashboard/navbar.dart';
import 'package:my_first_project/task1/expention_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'Home page',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
          backgroundColor: Colors.grey.shade700,
        ),
        body: Row(
          children: [
            // side_navbar(),
            // Expanded(
            // child:
            ExpansionTile1(),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // dashboard(),
                  const quick_contact(),
                  ElevatedButton(
                      onPressed: () {
                        context.go('/home/details');
                      },
                      child: const Text('Contact details')),
                  // ElevatedButton(
                  //     onPressed: () {
                  //       context.go('/home/task2');
                  //     },
                  //     child: const Text('practice task 2')),
                ],
              ),
            ),
            // ),
          ],
        ));
  }
}
