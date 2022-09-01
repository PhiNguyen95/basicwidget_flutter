import 'package:flutter/material.dart';

class BuildColumnLayout extends StatelessWidget {
  const BuildColumnLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            const Text('Column'),
            const Text('Column'),
            const Text('Column'),
            const Text('Column'),
          ],
        ),
    );
  }
}
