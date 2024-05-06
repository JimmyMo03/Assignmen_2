import 'package:flutter/material.dart';

// distance screen

class Distance extends StatefulWidget {
  const Distance({super.key});

  @override
  State<Distance> createState() => _DistanceState();
}

class _DistanceState extends State<Distance> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Distance'),
    );
  }
}
