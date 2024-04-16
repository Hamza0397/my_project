import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:my_first_project/error_page.dart';
import 'package:my_first_project/main.dart';
import 'package:my_first_project/show_nested.dart';
import 'package:my_first_project/startup_page.dart';
import 'package:my_first_project/home_page.dart';
import 'package:my_first_project/task1/expention_tile.dart';
import 'package:my_first_project/task1/simple_calculator.dart';
import 'package:my_first_project/task2.dart';
import 'package:my_first_project/view_details.dart';
import 'package:my_first_project/task1/login_design.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => login_page(),
    ),
    GoRoute(
        path: '/startup',
        builder: (context, state) => StartupPage(),
        routes: [
          GoRoute(
            path: 'myhome2',
            builder: (context, state) => MyHomePage2(
              title: 'calculator',
            ),
          )
        ]),
    GoRoute(
      path: '/task2',
      builder: (BuildContext context, GoRouterState state) => task2(),
    ),
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) => HomePage(),
      routes: [
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) =>
              const ViewDetails(),
          routes: [
            GoRoute(
              path: 'show-details',
              builder: (context, state) => ShowDetails(),
            ),
          ],
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => ErrorPage(),
);
