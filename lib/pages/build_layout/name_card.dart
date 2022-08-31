import 'package:flutter/material.dart';

import '../../models/product.dart';
import '../../models/products_repository.dart';

class BuildCard {
  static List<Card> buildCards() {
    List<Product> products = ProductsRepository.loadProducts(Category.all);

    // if (products.isEmpty) {
    //   return const <Card>[];
    // }

    return products.map((product) {
      return Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18 / 11,
              child: Image.asset(
                product.imageSrc,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Name: ${product.name}',
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Age: ${product.age}',
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Description: ${product.description}',
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }).toList();
  }
}
