import 'package:assignment2test/Screens/all_stores.dart';
import 'package:assignment2test/Screens/store_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'store.dart';

// Screen where favorite stores will be listed and user
// will be able to remove stores

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {

  void removeFav(Store store){
    Provider.of<AllStores>(context, listen: false).removeFromFav(store);

    showDialog(
      barrierDismissible: true,
      barrierColor: Colors.green,
      context: context,
      builder: (context) => const AlertDialog(
        title: Text("Successfully removed!"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AllStores>(
      builder: (context, value, child) => SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                const Text(
                  "Your favourite stores!",
                  style: TextStyle(fontSize: 20),
                ),

                Expanded(
                    child: ListView.builder(
                      itemCount: value.favStores.length, // specify the itemCount
                      itemBuilder: (context, index) {
                        if (value.favStores.isNotEmpty && index < value.favStores.length) {
                          Store eachStore = value.favStores[index];

                          return StoreTile(
                            store: eachStore,
                            onPressed: () => removeFav(eachStore),
                            icon: const Icon(Icons.delete),
                          );
                        } else {
                          return const SizedBox(); // Placeholder widget if the list is empty or index is out of bounds
                        }
                      },
                    ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
