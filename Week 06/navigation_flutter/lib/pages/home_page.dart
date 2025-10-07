import 'package:flutter/material.dart';

import '../models/item.dart';
import 'item_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  static const routeName = '/';

  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      imageUrl:
          'https://mir-s3-cdn-cf.behance.net/projects/404/a9c758204573401.Y3JvcCwxMDA1Myw3ODY0LDM5OCww.jpg',
      stock: 10,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      imageUrl:
          'https://mir-s3-cdn-cf.behance.net/projects/404/1cf33e179076371.Y3JvcCwxNTM0LDEyMDAsMzQsMA.jpeg',
      stock: 20,
      rating: 4.0,
    ),
    Item(
      name: 'Pepper',
      price: 3000,
      imageUrl:
          'https://mir-s3-cdn-cf.behance.net/projects/404/d99912229945955.Y3JvcCw0MDkxLDMyMDAsMjUzLDA.jpg',
      stock: 15,
      rating: 4.2,
    ),
    Item(
      name: 'Rice',
      price: 10000,
      imageUrl:
          'https://mir-s3-cdn-cf.behance.net/projects/404/8c1473223860775.Y3JvcCwxNDc5LDExNTcsMjksMA.png',
      stock: 50,
      rating: 4.8,
    ),
    Item(
      name: 'Flour',
      price: 4000,
      imageUrl:
          'https://mir-s3-cdn-cf.behance.net/project_modules/1400/4f7ed876917223.5c77e260384ab.jpg',
      stock: 25,
      rating: 4.3,
    ),
    Item(
      name: 'Oats',
      price: 3500,
      imageUrl:
          'https://mir-s3-cdn-cf.behance.net/project_modules/max_632_webp/f70eb7108944147.5fc8b892c47e3.jpg',
      stock: 30,
      rating: 4.6,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Item List')),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 4,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, ItemPage.routeName, arguments: item);
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Image.network(
                        item.imageUrl,
                        height: 80,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 8,
                        children: [
                          Text(
                            item.name,
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Price: ${item.price}',
                            style: const TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            'Stock: ${item.stock}',
                            style: const TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Row(
                            spacing: 4,
                            children: [
                              const Icon(Icons.star, size: 14, color: Colors.amber),
                              Text(
                                '${item.rating}',
                                style: const TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
