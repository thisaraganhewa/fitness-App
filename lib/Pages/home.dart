import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Breakfast",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
