import 'package:flutter/material.dart';
import 'package:my_first_project/dashboard/navbar.dart';
import 'package:my_first_project/task1/expention_tile.dart';

class task2 extends StatelessWidget {
  const task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'task 2',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.grey.shade700,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // side_navbar(),
          ExpansionTile1(),
          Center(
            child: Container(
              width: 450,
              height: 480,
              // color: Colors.amber,
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              border: Border.all(color: Colors.black)),
                          width: 400,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Strawberry Pavlova',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          width: 400,
                          height: 180,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              border: Border.all(color: Colors.black)),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                  'Strawberry Pavlova',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetuer elit.',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'Strawberry Pavlova',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetuer elit.',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetuer elit.',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'Strawberry Pavlova',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'Strawberry Pavlova',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetuer elit.',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetuer elit.',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'Strawberry Pavlova',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          width: 400,
                          height: 32,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              border: Border.all(color: Colors.black)),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.,
                            children: [
                              Padding(padding: EdgeInsets.only(left: 60)),
                              Icon(Icons.star, size: 20),
                              Icon(Icons.star, size: 20),
                              Icon(Icons.star, size: 20),
                              Icon(Icons.star, size: 20),
                              Icon(Icons.star, size: 20),
                              Padding(padding: EdgeInsets.only(left: 60)),
                              Text('170 Reviews')
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          border: Border.all(color: Colors.black)),
                      width: 400,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.kitchen_outlined,
                                color: Colors.green.shade400,
                              ),
                              Text('PREP:'),
                              Text("25 min")
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.access_alarm,
                                color: Colors.green.shade400,
                              ),
                              Text('COOK:'),
                              Text("1 hr")
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.restaurant,
                                color: Colors.green.shade400,
                              ),
                              Text('FEEDS:'),
                              Text("4-6")
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 600,
              child: Image.asset(
                'images/sunflower.jpg',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
