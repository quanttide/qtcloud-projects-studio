/// 页面路由和导航栏

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/program.dart';
import 'screens/project.dart';


final GoRouter router = GoRouter(
  routes: <GoRoute>[
    // 项目集页面
    GoRoute(
      name: 'programs',
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const ProgramScreen();
      },
    ),
    // 项目页面
    GoRoute(
      name: 'projects',
      path: '/projects',
      builder: (BuildContext context, GoRouterState state) {
        return const ProjectScreen();
      }
    )

  ]
);