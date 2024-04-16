import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewDetails extends StatelessWidget {
  const ViewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Contact Details'),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Details about contact'),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  context.go('/home/details/show-details');
                },
                child: Text('show'))
          ],
        ),
      ),
    );
  }
}
