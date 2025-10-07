import 'package:flutter/material.dart';

import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  static const routeName = '/item';

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(title: const Text('Item Detail')),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${itemArgs.name}', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 8),
            Text('Price: ${itemArgs.price}', style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
