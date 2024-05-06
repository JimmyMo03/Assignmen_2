import 'package:flutter/material.dart';
import 'store.dart';

class StoreTile extends StatelessWidget {
  final Store store;
  void Function()? onPressed;
  final Widget icon;

  StoreTile({super.key, required this.store, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5, top: 5),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(store.name),
        leading: Image.asset(
          store.imagePath,
          width: 100,
          height: 100,
        ),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
