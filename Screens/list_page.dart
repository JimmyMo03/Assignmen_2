import 'package:assignment2test/Screens/all_stores.dart';
import 'package:assignment2test/Screens/store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'store_tile.dart';

// Screen where all stores will be listed and user
// will be able to add stores to their favourites

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  void addFav(Store store){
    Provider.of<AllStores>(context, listen: false).addToFav(context, store);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AllStores>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Heading text
              const Text(
                'All the stores you love at your fingertips :)',
                style: TextStyle(
                  fontSize: 20,
                ),

              ),
              //List of stores
              Expanded(
                child: ListView.builder(
                  itemCount: value.allStores.length, // specify the itemCount
                  itemBuilder: (context, index) {
                    if (index < value.allStores.length) {
                      Store eachStore = value.allStores[index];

                      return StoreTile(
                        store: eachStore,
                        onPressed: () => addFav(eachStore),
                        icon: const Icon(Icons.add),
                      );
                    } else {
                      return const SizedBox(); // Placeholder widget if the index is out of bounds
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
