import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShowDetails extends StatelessWidget {
  const ShowDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Email: hamza\nContact: 0314-1234567'),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  context.go('/home/details');
                },
                child: Text('back'))
          ],
        ),
      ),
    );
  }
}
