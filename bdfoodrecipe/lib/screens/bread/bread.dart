import 'package:bdfoodrecipe/data.dart';
import 'package:bdfoodrecipe/global/functions.dart';
import 'package:bdfoodrecipe/widget/custom_grid_tile.dart';
import 'package:flutter/material.dart';

class BreadScreen extends StatelessWidget {
  
  final List bread = bdfood["bread"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: customGridDelegate(),
      padding: EdgeInsets.all(10),
      itemCount: bread.length,
      itemBuilder: (BuildContext context, int index){
        return CustomGridTile(
          imageUrl: bread[index]["image"],
          title: bread[index]["title"],
        );
      }
    );
  }
}