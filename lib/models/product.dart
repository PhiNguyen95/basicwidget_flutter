enum Category {
  all,
  student,
  teacher,
}

class Product {
  final Category category;
  final String name;
  final int age;
  final String imageSrc;
  final String description;

  const Product(
      {required this.category,
      required this.name,
      required this.age,
      required this.imageSrc,
      required this.description});
}
