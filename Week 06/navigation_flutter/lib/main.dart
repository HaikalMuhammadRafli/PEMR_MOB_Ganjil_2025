import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'models/item.dart';

import 'pages/home_page.dart';
import 'pages/item_page.dart';

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      name: 'item',
      path: '/item',
      builder: (context, state) {
        final item = state.extra as Item;
        return ItemPage(itemArgs: item);
      },
    ),
  ],
);

void main() {
  runApp(
    MaterialApp.router(
      title: 'Navigation Flutter - Haikal Muhammad Rafli - 2341720008',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    )
  );
}
