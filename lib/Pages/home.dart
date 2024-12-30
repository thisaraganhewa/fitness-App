import 'package:fitness/components/appBar.dart';
import 'package:fitness/components/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: App_Bar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          searchBar()
        ],
      ),
    );
  }

  

  
}
