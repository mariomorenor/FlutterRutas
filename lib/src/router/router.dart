import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rutas/src/views/home.dart';
import 'package:rutas/src/views/login.dart';
import 'package:rutas/src/views/profile_page.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
      path: '/',
      redirect: (BuildContext context, GoRouterState state) {
        return '/login';
      }),
  GoRoute(
    path: '/login',
    builder: (BuildContext context, GoRouterState state) => const LoginPage(),
  ),
  GoRoute(
    path: '/home',
    builder: (BuildContext context, GoRouterState state) => const HomePage(),
  ),
  GoRoute(
    path: '/profile',
    builder: (BuildContext context, GoRouterState state) => const ProfilePage(),
  ),
]);
