import 'package:flutter/material.dart';
import 'package:my_first_project/dashboard/textfield.dart';

class quick_contact extends StatelessWidget {
  const quick_contact({super.key});

  @override
  Widget build(BuildContext context) {
    var umsg = TextEditingController();
    return Container(
      width: 295,
      height: 500,
      padding: EdgeInsets.only(top: 28),
      // color: Colors.blue,
      child: Card(
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        color: Colors.white,
        elevation: 7,
        child: Padding(
          padding: const EdgeInsets.only(left: 13, right: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 13, bottom: 35),
                child: Text(
                  'Quick Contact',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              custom_textfield(
                Thight: 30,
                Twidth: 290,
                Thint: 'Your name',
                Tprefixicon: Icon(
                  Icons.person,
                  color: Colors.blue.shade900,
                  size: 20,
                ),
              ),
              // Card(
              //   elevation: 5,
              //   color: Colors.white,
              //   surfaceTintColor: Colors.transparent,
              //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              //   child: SizedBox(
              //     height: 30,
              //     width: 290,
              //     child: TextField(
              //       controller: uname,
              //       style: TextStyle(fontSize: 13),
              //       decoration: InputDecoration(
              //         hintText: 'Your name',
              //         hintStyle: TextStyle(
              //           fontSize: 13,
              //         ),
              //         prefixIcon: Icon(
              //           Icons.person,
              //           color: Colors.blue.shade900,
              //           size: 20,
              //         ),
              //         enabledBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.zero,
              //           borderSide: BorderSide(color: Colors.white, width: 3.0),
              //           // borderSide: BorderSide(color: Colors.white),
              //         ),
              //         focusedBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.zero,
              //           borderSide: BorderSide(color: Colors.white, width: 3.0),
              //         ),
              //         contentPadding: EdgeInsets.all(8),
              //         isDense: true,
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              custom_textfield(
                Thight: 30,
                Twidth: 290,
                Thint: 'Your E-mail',
                Tprefixicon: Icon(
                  Icons.email,
                  color: Colors.blue.shade900,
                  size: 20,
                ),
              ),
              // Card(
              //   elevation: 5,
              //   color: Colors.white,
              //   surfaceTintColor: Colors.transparent,
              //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              //   child: SizedBox(
              //     height: 30,
              //     width: 290,
              //     child: TextField(
              //       controller: umail,
              //       style: TextStyle(fontSize: 13),
              //       decoration: InputDecoration(
              //         hintText: 'Your E-mail',
              //         hintStyle: TextStyle(
              //           fontSize: 13,
              //         ),
              //         prefixIcon: Icon(
              //           Icons.email,
              //           color: Colors.blue.shade900,
              //           size: 20,
              //         ),
              //         enabledBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.zero,
              //           borderSide: BorderSide(color: Colors.white, width: 3.0),
              //           // borderSide: BorderSide(color: Colors.white),
              //         ),
              //         focusedBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.zero,
              //           borderSide: BorderSide(color: Colors.white, width: 3.0),
              //         ),
              //         contentPadding: EdgeInsets.all(8),
              //         isDense: true,
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              custom_textfield(
                Thight: 30,
                Twidth: 290,
                Thint: 'Your Subject',
                Tprefixicon: Icon(
                  Icons.lock,
                  color: Colors.blue.shade900,
                  size: 20,
                ),
              ),
              // Card(
              //   elevation: 5,
              //   color: Colors.white,
              //   surfaceTintColor: Colors.transparent,
              //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              //   child: SizedBox(
              //     height: 30,
              //     width: 290,
              //     child: TextField(
              //       controller: usubject,
              //       style: TextStyle(fontSize: 13),
              //       decoration: InputDecoration(
              //         hintText: 'Your Subject',
              //         hintStyle: TextStyle(
              //           fontSize: 13,
              //         ),
              //         prefixIcon: Icon(
              //           Icons.lock,
              //           color: Colors.blue.shade900,
              //           size: 20,
              //         ),
              //         enabledBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.zero,
              //           borderSide: BorderSide(color: Colors.white, width: 3.0),
              //           // borderSide: BorderSide(color: Colors.white),
              //         ),
              //         focusedBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.zero,
              //           borderSide: BorderSide(color: Colors.white, width: 3.0),
              //         ),
              //         contentPadding: EdgeInsets.all(8),
              //         isDense: true,
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),

              Card(
                elevation: 5,
                color: Colors.white,
                surfaceTintColor: Colors.transparent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                child: SizedBox(
                  width: 290,
                  height: 150,
                  child: TextFormField(
                    maxLines: null,
                    expands: true,
                    controller: umsg,
                    style: TextStyle(fontSize: 13),
                    keyboardType: TextInputType.multiline,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      hintText: 'Message',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(color: Colors.white, width: 3.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(color: Colors.white, width: 3.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 182),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.zero),
                      backgroundColor: Color.fromARGB(255, 81, 254, 165),
                      shadowColor: Colors.black,
                      elevation: 5,
                    ),
                    child: Text(
                      "Send",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
