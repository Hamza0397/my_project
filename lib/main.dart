// ignore_for_file: unused_local_variable

import 'package:my_first_project/dashboard/dashboard.dart';
import 'package:my_first_project/hero_animation/first_page.dart';
import 'package:my_first_project/task1/expention_tile.dart';
import 'package:my_first_project/task2.dart';
import 'package:my_first_project/task1/listview.dart';
import 'package:my_first_project/task1/expanded.dart';
import 'package:my_first_project/task1/list_tile.dart';
import 'package:my_first_project/dashboard/contact.dart';
import 'package:my_first_project/task1/input.dart';
import 'package:my_first_project/task1/login_design.dart';
import 'package:my_first_project/task3/BTN.dart';
import 'package:my_first_project/widgets/rounded_button.dart';
import 'package:my_first_project/dashboard/navbar.dart';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_project/widgets/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  var time = DateTime.now();
  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      // drawer: ExpansionTile1(),
      body:
          // ab(),
          // login_page(),
          //       // ExpansionTile1(),
          // );
          MaterialApp.router(
        routerConfig: router,
      ),
    );
  }
}
    // Scaffold(
    //   body:
    //       //  page1(),
    //       SingleChildScrollView(
    //     scrollDirection: Axis.horizontal,
    //     child: Row(
    //       children: [
    //         side_navbar(),
    //         dashboard(),
    //       ],
    //     ),
    //   ),

    //   // ElevatedButton(
    //   //     onPressed: () {
    //   //       Navigator.push(
    //   //           context,
    //   //           MaterialPageRoute(
    //   //             builder: (context) => page1(),
    //   //           ));
    //   //     },
    //   //     child: Text('click'))

    //   // Center(
    //   //   child: Column(
    //   //     mainAxisAlignment: MainAxisAlignment.center,
    //   //     children: [
    //   //       Text(
    //   //         'welcome, click next to continue',
    //   //         style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    //   //       ),
    //   //       ElevatedButton(
    //   //           style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
    //   //           onPressed: () {
    //   //             Navigator.push(
    //   //                 context,
    //   //                 MaterialPageRoute(
    //   //                   builder: (context) => dashboard(),
    //   //                 ));
    //   //           },
    //   //           child: Text(
    //   //             'next',
    //   //             style: TextStyle(color: Colors.white),
    //   //           )),
    //   //     ],
    //   //   ),
    //   // ),

    //   // dashboard(),

    //   //

    //   //  login_page(),

    //   // input(),
    //   // listtile(),
    //   // expand(),

    //   // SingleChildScrollView(
    //   //   child: Column(
    //   //     crossAxisAlignment: CrossAxisAlignment.start,
    //   //     children: [
    //   //       task2(),
    //   //       list_view(),
    //   //     ],
    //   //   ),
    //   // ),
    // );

