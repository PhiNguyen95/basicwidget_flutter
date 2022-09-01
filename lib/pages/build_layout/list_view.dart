import 'package:base_project/pages/build_layout/name_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/product.dart';
import '../../models/products_repository.dart';

class BuildListViewLayout extends StatelessWidget {
  BuildListViewLayout({Key? key}) : super(key: key);

  final List<Product> products = ProductsRepository.loadProducts(Category.all);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: BuildCard.buildListCards(),
    );
  }
}

class BuildListViewBuilderLayout extends StatelessWidget {
  BuildListViewBuilderLayout({Key? key}) : super(key: key);

  final List<Product> products = ProductsRepository.loadProducts(Category.all);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: products.length,
      itemBuilder: (context, index) {
        if (products[index].category == Category.teacher) {
          return TypeTeacher(product: products[index]);
        } else {
          return TypeStudent(product: products[index]);
        }
      },
    );
  }
}

class TypeTeacher extends StatelessWidget {
  const TypeTeacher({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ListTile(
        leading: Image.asset(product.imageSrc),
        title: Text('Teacher: ${product.name}'),
        subtitle: Text(
            '''Age: ${product.age.toString()}\nDescription: ${product.description}'''),
        isThreeLine: true,
      ),
    );
  }
}

class TypeStudent extends StatelessWidget {
  const TypeStudent({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ListTile(
        leading: Image.asset(product.imageSrc),
        title: Text('Student: ${product.name}'),
        subtitle: Text(
            '''Age: ${product.age.toString()}\nDescription: ${product.description}'''),
        isThreeLine: true,
      ),
    );
  }
}
