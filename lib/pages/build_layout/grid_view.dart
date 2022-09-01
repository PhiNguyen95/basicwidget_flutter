import 'package:base_project/pages/build_layout/name_card.dart';
import 'package:flutter/material.dart';

class BuildGridView extends StatelessWidget {
  const BuildGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(16.0),
      childAspectRatio: 8.0 / 9.0,
      children: BuildCard.buildGridCards(),
    );
  }
}
