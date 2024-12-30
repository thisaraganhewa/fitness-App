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
          searchBar(),
          const SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Category",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w800),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 150,
                decoration: const BoxDecoration(color: Colors.green),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container();
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
