import 'product.dart';

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    const allProducts = <Product>[
      Product(
        category: Category.teacher,
        name: 'Thay Quy',
        age: 35,
        imageSrc: 'images/image7_thayquy.jpg',
        description: 'Ask for more information.',
      ),
      Product(
        category: Category.student,
        name: 'Phi',
        age: 26,
        imageSrc: 'images/image1_phi.jpg',
        description: 'Ask for more information.',
      ),
      Product(
        category: Category.student,
        name: 'Dung',
        age: 35,
        imageSrc: 'images/image2_dung.jpg',
        description: 'Ask for more information.',
      ),
      Product(
        category: Category.student,
        name: 'Hung Anh',
        age: 26,
        imageSrc: 'images/image3_hunganh.jpg',
        description: 'Ask for more information.',
      ),
      Product(
        category: Category.student,
        name: 'Trinh',
        age: 26,
        imageSrc: 'images/image4_trinh.jpg',
        description: 'Ask for more information.',
      ),
      Product(
        category: Category.student,
        name: 'Tram',
        age: 26,
        imageSrc: 'images/image5_tram.jpg',
        description: 'Ask for more information.',
      ),
      Product(
        category: Category.student,
        name: 'Phi',
        age: 26,
        imageSrc: 'images/image6_quocanh.jpg',
        description: 'Ask for more information.',
      ),
    ];

    if (category == Category.all) {
      return allProducts;
    } else {
      return allProducts.where((Product p) {
        return p.category == category;
      }).toList();
    }
  }
}
