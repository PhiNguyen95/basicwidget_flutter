import 'package:flutter/material.dart';

class BuildRowLayout extends StatelessWidget {
  const BuildRowLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          children: [
            const Text('Row'),
            const Text('Row'),
            const Text('Row'),
            const Text('Row'),
          ],
        ),
    );
  }
}
