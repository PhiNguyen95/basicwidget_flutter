import 'package:base_project/pages/build_layout/name_card.dart';
import 'package:flutter/material.dart';

class BuildRowLayout extends StatelessWidget {
  const BuildRowLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: viewportConstraints.minHeight,),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: BuildCard.buildListCards(),
              ),
            ),
          );
        });
  }
}
