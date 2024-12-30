import 'package:flutter/material.dart';

AppBar App_Bar() {
    return AppBar(
      title: const Text(
        "Breakfast",
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
      ),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          
        },
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(10)),
          child: const Icon(
            Icons.arrow_back_ios_new_sharp,
            size: 20,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            
          },
          child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(vertical: 2),
          width: 37,
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(10)),
          child: const Icon(
            Icons.menu,
            size: 30,
          ),
                  ),
        ),
      ],
    );
  }