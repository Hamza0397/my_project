import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_first_project/dashboard/dashboard.dart';
import 'package:my_first_project/task1/list_tile.dart';
import 'package:my_first_project/task1/listview.dart';

class side_navbar extends StatelessWidget {
  const side_navbar({super.key});

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
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text(
                'Dashboard',
                style: TextStyle(fontSize: 15),
              ),
              onTap: () => context.go('/startup'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Contact', style: TextStyle(fontSize: 15)),
              onTap: () => context.go('/home'),
            ),
            ListTile(
              leading: Icon(Icons.web),
              title: Text('tast 2', style: TextStyle(fontSize: 15)),
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
