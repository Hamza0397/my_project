import 'package:flutter/material.dart';
import 'package:my_first_project/dashboard/card.dart';
import 'package:my_first_project/dashboard/contact.dart';

class dashboard extends StatelessWidget {
  const dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          custom_card(
            heading: 'Booking',
            subheading: 'Today',
            values: '250',
            colorr: Colors.orange,
            icon: Icon(
              Icons.flight_takeoff,
              color: Colors.white,
              size: 35,
            ),
          ),
          custom_card(
            heading: 'Website Visits',
            subheading: 'Tracked from Google Analytics',
            values: '3.560',
            colorr: Colors.pink,
            icon: Icon(
              Icons.flight_takeoff,
              color: Colors.white,
            ),
          ),
          custom_card(
            heading: 'Revenue',
            subheading: 'Last 24 Hours',
            values: '2500',
            colorr: Colors.green,
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 35,
            ),
          ),
          custom_card(
            heading: 'Followers',
            subheading: 'Last 24 Hours',
            values: '112',
            colorr: Colors.blue,
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
          ),
          // quick_contact(),
        ],
      ),
    );
  }
}
