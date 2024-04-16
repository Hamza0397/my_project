import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class custom_card extends StatelessWidget {
  final String? heading;
  final String? values;
  final String? subheading;
  final Icon? icon;
  final Color? colorr;

  custom_card({
    this.colorr,
    this.heading,
    this.icon,
    this.subheading,
    this.values,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 160,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            margin: EdgeInsets.all(8),
            width: 250,
            height: 170,
            child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                color: Colors.white,
                surfaceTintColor: Colors.transparent,
                shadowColor: Colors.black,
                elevation: 7,
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        '${heading}',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        '${values}',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 17),
                        child: Divider(),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text('${subheading}',
                                  style: TextStyle(fontSize: 12)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22, top: 14),
            child: Container(
              width: 70,
              height: 55,
              child: Card(
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  color: colorr,
                  shadowColor: Colors.black,
                  elevation: 7,
                  child: Center(
                    child: icon,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
