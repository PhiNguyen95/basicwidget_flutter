import 'package:flutter/material.dart';

import '../../models/product.dart';
import '../../models/products_repository.dart';

class BuildListViewLayout extends StatelessWidget {
   BuildListViewLayout({Key? key}) : super(key: key);

  final List<Product> products = ProductsRepository.loadProducts(Category.all);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: products.length,
      itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListTile(
              leading: Image.asset(products[index].imageSrc),
              title: Text('Name: ${products[index].name}'),
              subtitle: Text(
                  '''Age: ${products[index].age.toString()}\nDescription: ${products[index].description}'''),
              isThreeLine: true,
            ),
          );
      },
    );
  }
}
