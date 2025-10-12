import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/item_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        HomePage.routeName: (context) => HomePage(),
        ItemPage.routeName: (context) => ItemPage(),
      },
    ),
  );
}
