import 'store.dart';
import 'package:flutter/material.dart';

class AllStores extends ChangeNotifier{
  final List<Store> allStores = [
    Store(name: 'Spinneys', x: 5, y: 5, imagePath: "lib/Images/Spinneys.jpeg"),
    Store(name: 'H&M', x: -10, y: 5, imagePath: "lib/Images/HandM.jpeg"),
    Store(name: 'Nike', x: -5, y: -7, imagePath: "lib/Images/nike.jpeg"),
    Store(name: 'Target', x: 7, y: -5, imagePath: "lib/Images/target.jpeg"),
    Store(name: "McDonald's", x: -10, y: 5, imagePath: "lib/Images/mcd.jpeg"),
  ];

  final List<Store> favStores = [];

  void addToFav(BuildContext context, Store store) {
    if (!favStores.contains(store)) {
      favStores.add(store);
      notifyListeners();

      showDialog(
        barrierDismissible: true,
        barrierColor: Colors.green,
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Added to Favorites!"),
        ),
      );

    }
    else {
      showDialog(
        barrierDismissible: true,
        barrierColor: Colors.red,
        context: context,
        builder: (context) =>
        const AlertDialog(
          title: Text("Already in favorites!"),
        ),
      );
    }
  }

  void removeFromFav(Store store){
    favStores.remove(store);
    notifyListeners();
  }

  List<Store> get _favStores => favStores;
}