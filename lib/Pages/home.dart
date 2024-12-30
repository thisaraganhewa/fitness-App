import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Breakfast",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
        ),
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(10)),
          child: const Icon(
            Icons.arrow_back_ios_new_sharp,
            size: 20,
          ),
        ),
      ),
    );
  }
}
