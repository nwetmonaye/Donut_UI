import 'package:donut_ui_design/util/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  List donutsOnSale = [
    [
      "Ice Cream",
      "46",
      Colors.blue,
      "assets/images/icecream_donut.png",
    ],
    [
      "Strawberry",
      "55",
      Colors.red,
      "assets/images/strawberry_donut.png",
    ],
    [
      "Grape Ape",
      "90",
      Colors.purple,
      "assets/images/grape_donut.png",
    ],
    [
      "Choco",
      "100",
      Colors.brown,
      "assets/images/chocolate_donut.png",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}
