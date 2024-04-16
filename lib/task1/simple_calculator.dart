import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ////////////simple calculator ///////////////////////

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key, required this.title});
  final String title;
  @override
  State<StatefulWidget> createState() => MyHomeState();
}

class MyHomeState extends State<MyHomePage2> {
  var count = 0;
  var input1 = TextEditingController();
  var input2 = TextEditingController();
  var result = 0;

  void addition() {
    var no1 = int.parse(input1.text);
    var no2 = int.parse(input2.text);
    var sum = no1 + no2;
    result = sum;
    setState(() {});
  }

  void subtract() {
    var no1 = int.parse(input1.text);
    var no2 = int.parse(input2.text);
    var sub = no1 - no2;
    result = sub;
    setState(() {});
  }

  void multiply() {
    var no1 = int.parse(input1.text);
    var no2 = int.parse(input2.text);
    var mult = no1 * no2;
    result = mult;
    setState(() {});
  }

  // void divide() {
  //   var no1 = int.parse(input1.text);
  //   var no2 = int.parse(input2.text);
  //   var div = no1 / no2;
  //   result = div;
  //   setState(() {});
  // }

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: input1,
              ),
              SizedBox(height: 10),
              TextField(
                controller: input2,
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      onPressed: () {
                        addition();
                      },
                      child:
                          Text('add', style: TextStyle(color: Colors.white))),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      onPressed: () {
                        subtract();
                      },
                      child: Text('subtract',
                          style: TextStyle(color: Colors.white))),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      onPressed: () {
                        multiply();
                      },
                      child: Text('multiply',
                          style: TextStyle(color: Colors.white))),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      onPressed: () {
                        // divide();
                      },
                      child: Text('divide',
                          style: TextStyle(color: Colors.white))),
                ],
              ),
              SizedBox(height: 15),
              Text('Result: $result'),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    context.go('/startup');
                    // divide();
                  },
                  child: Text('back', style: TextStyle(color: Colors.white))),
            ],
          ),
        ),
      ),
    );
  }
}
