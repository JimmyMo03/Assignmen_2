//Class to set each store's properties

import 'package:flutter/cupertino.dart';

class Store{
  final String name;
  final double x;
  final double y;
  final String imagePath;
  final bool fav;

  Store({
    required this.name,
    required this.x,
    required this.y,
    required this.imagePath,
    this.fav = false
  });
}
