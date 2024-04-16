import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExpansionTile1 extends StatelessWidget {
  const ExpansionTile1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      child: Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/backgroung.jpeg'),
                        fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/sunflower.jpg'),
                      ),
                      title: Text('Hamza'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 45),
                      child: Text(
                        'M.Hamza Ahmed',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                    Text('m.hamza0397@gmail.com',
                        style: TextStyle(fontSize: 12)),
                  ],
                )),
            SizedBox(
              height: 50,
            ),
            ExpansionTile(
              // initiallyExpanded: true,

              leading: Icon(
                Icons.dashboard,
                color: Colors.grey.shade800,
              ),
              title: Text(
                'Dashboard',
                style: TextStyle(fontSize: 15),
              ),

              children: [
                ListTile(
                  title: Text('home'),
                  onTap: () => context.go('/startup'),
                ),
                ListTile(
                  title: Text('simple calculator'),
                  onTap: () => context.go('/startup/myhome2'),
                ),
                ListTile(
                  title: Text('page 3'),
                )
              ],
            ),
            ExpansionTile(
              leading: Icon(
                Icons.person,
                color: Colors.grey.shade800,
              ),
              title: Text('Contact', style: TextStyle(fontSize: 15)),
              children: [
                ListTile(
                  title: Text('contact'),
                  onTap: () => context.go('/home'),
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.web),
              title: Text('task 2', style: TextStyle(fontSize: 15)),
              onTap: () => context.go('/task2'),
            ),
            ListTile(
              leading: Icon(Icons.insert_chart),
              title: Text('Charts', style: TextStyle(fontSize: 15)),
            ),
          ],
        ),
      ),
    );
  }
}
