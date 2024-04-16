import 'dart:io';

void main() {
  print('welcome');
}

// ///////////////Animatedcontainer////////////////
// var _width = 200.0;  /////////use in state class
// var _height = 100.0;  /////////use in state class
// bool flag = true;  /////////use in state class
// Color bgcolor = Colors.blue;  /////////use in state class
// 
// Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             AnimatedContainer(
//               duration: Duration(seconds: 1),
//               color: bgcolor,
//               width: _width,
//               height: _height,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   if (flag) {
//                     _width = 100;
//                     _height = 200;
//                     flag = false;
//                     bgcolor = Colors.green;
//                   } else {
//                     _width = 200;
//                     _height = 100;
//                     flag = true;
//                     bgcolor = Colors.blue;
//                   }
//
//                   setState(() {});
//                 },
//                 child: Text('Animate'))
//           ],
//         ),
//       ),


// ///////rangeslider/////////////
// Center(
//         child: RangeSlider(
//           min: 0,
//           max: 100,
//           values: values,
//           divisions: 100,
//           labels: labels,
//           onChanged: (newValue) {
//             values = newValue;
//             print('${newValue.start}  ${newValue.end}');
//             setState(() {});
//           },
//         ),
//       ),

// ///////////////////increment function using stateful widget////////////////
      // Column(
      //   children: [
      //     Text("count: $count"),
      //     ElevatedButton(
      //       onPressed: () {
      //         increment();
      //       },
      //       child: Text('click'),
      //     ),  
      //   ],
      // ),

// ////////////////rounded custom button///////////
// Column(
//         children: [
//           Container(
//             width: 110,
//             child: RoundedButton(
//               btname: ' play',
//               color: Colors.amber,
//               icon: Icon(Icons.abc),
//               callback: () {
//                 print('hamza');
//               },
//               textstyle: TextStyle(fontWeight: FontWeight.bold),
//             ),
//           ),
//           Container(
//             width: 110,
//             child: RoundedButton(
//               btname: ' play',
//               color: Colors.amber,
//               icon: Icon(Icons.abc),
//               callback: () {
//                 print('hamza');
//               },
//               // textstyle: TextStyle(fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       ),

// ///////////////// date picker//////////////
// Center(
//         child: Column(
//           children: [
//             Text('select date: '),
//             ElevatedButton(
//                 onPressed: () async {
//                   // DateTime? pickedDate = await showDatePicker(
//                   //     context: context,
//                   //     initialDate: DateTime.now(), //get today's date
//                   //     firstDate: DateTime(
//                   //         2000), //DateTime.now() - not to allow to choose before today.
//                   //     lastDate: DateTime(2101));
//                   DateTime? pickedDate = await showDatePicker(
//                       context: context,
//                       initialDate: DateTime.now(),
//                       firstDate: DateTime(2000),
//                       lastDate: DateTime(2023));
//                   // if (datePicked != null) {
//                   //   print(
//                   //       '${datePicked.day}: ${datePicked.month}: ${datePicked.weekday}');
//                   // }
//                 },
//                 child: Text('date')),
//           ],
//         ),
//       ),

// ////////////////////date time format//////////////////////////////////
// Text('current time: ${DateFormat('Hm').format(time)}'),

 //         ListView(
    //   // scrollDirection: Axis.horizontal,
    //   // reverse: true,
    //   children: [
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Text(
    //         'one',
    //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
    //       ),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Text(
    //         'two',
    //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
    //       ),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Text(
    //         'three',
    //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
    //       ),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Text(
    //         'four',
    //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
    //       ),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Text(
    //         'five',
    //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
    //       ),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Text(
    //         'six',
    //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
    //       ),
    //     ),
    //   ],
    // ),

  // /////////////for////////////
  // for (int i = 0; i < 10; i++) {
  //   print('hamza');
  // }

//   //////////final///////////
//   final name = ['ali', 'fin'];
//   name.insert(1, 'hamza');
//   print(name);

// ////////////constant////////
//   const Names = ['pasha'];
//   // Names.add('pasha'); //cant support
//   print(Names);

  // /////////////list//////////////
  // var listno = [1, 2, 3, 4, 5];
  // listno.add(6);
  // var name = [];
  // name.add('hamza');
  // name.add('ahmed');
  // name.add('ali');
  // print(name);
  // name.insert(2, 20);
  // name[1] = 'ppp';
  // name.insertAll(2, listno);
  // print(name);
  // print(listno);

/////////////maps ('key':'values')//////////////////////////
  
  // var map_name = Map();
  // map_name['name'] = 'hamza';
  // map_name['age'] = 25;
  // map_name['year'] = 2024;

  // print(map_name.isEmpty);
  // print(map_name.isNotEmpty);
  // print(map_name.keys);
  // print(map_name.length);
  // print(map_name.values);
  // print(map_name.containsKey('name'));
  // print(map_name.containsValue('false'));
  // print(map_name.remove('name'));
  // print(map_name);

///////////main/////////////////

  // var my = myclass();
  // my.name('hamza');    //function call//

  // my.add(6, 10);   //function call//

///////////////class///////////
///
// class myclass {
          
          //constructor create//
          // myclass(){
          //   print('hamza');
          // }

          //function create//

//   void name(var a) {
//     print('$a');
//   }
          //function create//

//   int add(int num1, int num2) {
//     int sum = num1 + num2;

//     return sum;
//   }
// }


      //   //////////////////singlechildscrollview////////////////////
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: SingleChildScrollView(
      //             scrollDirection: Axis.horizontal,
      //             child: Row(
      //               children: [
      //                 Container(
      //                   margin: EdgeInsets.only(right: 10),
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.amber,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 10),
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.blue,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 10),
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.blueGrey,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           width: 100,
      //           height: 200,
      //           color: Colors.brown,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           width: 100,
      //           height: 200,
      //           color: Colors.blueGrey,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           width: 100,
      //           height: 200,
      //           color: Colors.blue,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

      // /////////////////inkwell/////
      // Center(
      //   child: Container(
      //       width: 100,
      //       height: 100,
      //       child: InkWell(
      //           onLongPress: () {
      //             print('bbbbbb');
      //           },
      //           child: Image.asset('images/flutter.png'))),
      // )
      // Center(
      // child: Container(
      //   width: 100,
      //   height: 100,
      //   color: Colors.amber,
      // child:
      //     OutlinedButton(
      //   child: Text('click'),
      //   onPressed: () {
      //     print('ali');
      //   },
      //   onLongPress: () {
      //     print('hamza');
      //   },
      // ),
      //
      //     ElevatedButton(
      //   child: Text('click'),
      //   onPressed: () {
      //     print('ali');
      //   },
      //   onLongPress: () {
      //     print('hamza');
      //   },
      // ),
      //
      // TextButton(
      //   child: Text('click'),
      //   onPressed: () {
      //     print('hamza');
      //   },
      // ),
      // ),
      // ),

      // Container(
      //     color: Colors.amber,
      //     width: MediaQuery.of(context).size.width,
      //     height: MediaQuery.of(context).size.height,
      //     child: Row(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       mainAxisAlignment: MainAxisAlignment.end,
      //       children: [
      //         Container(
      //           decoration: BoxDecoration(
      //               color: Colors.blue,
      //               borderRadius: BorderRadius.circular(20.0)),
      //           child: ClipRRect(
      //             borderRadius: BorderRadius.circular(10.0),
      //             child: SizedBox(
      //               width: 800,
      //               height: 200,
      //               child: Image.asset(
      //                 'images/flutter.png',
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //           ),
      //         ),
      //       ],
      //     )),
      //     Container(
      //   // color: Colors.black,
      //   // width: MediaQuery.of(context).size.width,
      //   // height: MediaQuery.of(context).size.height,
      //   child: Container(
      //     width: 250,
      //     height: 85,
      //     // padding: EdgeInsets.only(top: 20.0),
      //     decoration: BoxDecoration(
      //         color: Colors.blue, borderRadius: BorderRadius.circular(20.0)),
      //     child: Row(
      //       // mainAxisAlignment: MainAxisAlignment.start,
      //       // mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         SizedBox(width: 13),
      //         ClipRRect(
      //           borderRadius: BorderRadius.circular(10.0),
      //           // mainAxisAlignment: MainAxisAlignment.center,
      //           child: SizedBox(
      //             width: 70,
      //             height: 63,
      //             child: Image.asset(
      //               'images/flutter.png',
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 15),
      //         // Padding(
      //         // padding: EdgeInsets.only(left: 30.0),
      //         // ),
      //         Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text(
      //               'User',
      //               style: TextStyle(fontSize: 15, color: Colors.white),
      //             ),
      //             Text('Hamza',
      //                 style: TextStyle(
      //                     fontSize: 16,
      //                     fontWeight: FontWeight.bold,
      //                     color: Colors.white)),
      //           ],
      //         ),
      //         SizedBox(width: 65),
      //         Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Icon(
      //               Icons.keyboard_arrow_up,
      //               size: 20,
      //               color: Colors.white,
      //             ),
      //             Icon(
      //               Icons.keyboard_arrow_down,
      //               size: 20,
      //               color: Colors.white,
      //             )
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
