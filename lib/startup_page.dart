import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:my_first_project/dashboard/contact.dart';
import 'package:my_first_project/dashboard/dashboard.dart';
import 'package:my_first_project/dashboard/navbar.dart';
import 'package:my_first_project/task1/expention_tile.dart';

class StartupPage extends StatelessWidget {
  const StartupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Startup Page',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.grey.shade700,
      ),
      // drawer: side_navbar(),
      body: Row(
        children: [
          // side_navbar(),
          ExpansionTile1(),
          Expanded(
            child: Column(
              children: [
                dashboard(),
                // quick_contact(),
                SizedBox(
                  height: 10,
                ),
                // Text('To Navigate to home page press button'),
                // ElevatedButton(
                //     onPressed: () {
                //       context.go('');
                //     },
                //     child: Text('nevigate to task 2'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
