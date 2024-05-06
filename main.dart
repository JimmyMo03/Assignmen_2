import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/all_stores.dart';
import 'Screens/List_Screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AllStores(),
      builder: (context, child) => const MaterialApp(
        home: ListScreen(),
      ),
    );
  }
}

