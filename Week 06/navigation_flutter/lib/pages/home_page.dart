import 'package:flutter/material.dart';

import '../models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  static const routeName = '/';

  final List<Item> items = [Item(name: 'Sugar', price: 5000), Item(name: 'Salt', price: 2000)];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Haikal Muhammad Rafli - 2341720008',
      home: Scaffold(
        appBar: AppBar(title: const Text('Item List')),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/item');
                },
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(child: Text(item.name)),
                        Expanded(child: Text(item.price.toString(), textAlign: TextAlign.end)),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
