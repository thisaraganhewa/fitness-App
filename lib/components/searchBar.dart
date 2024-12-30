import 'package:flutter/material.dart';

Container searchBar() {
    return Container(
          margin: EdgeInsets.only(top: 40, left: 20, right: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff1D1617).withOpacity(0.11),
                blurRadius: 40,
                spreadRadius: 0.0
              )
            ]
          ),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.all(15),
              hintText: "Search Pancake",
              hintStyle: const TextStyle(
                fontSize: 14,
                color: Color(0xffDDDADA)
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none
              ),
              prefixIcon: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(Icons.search),
              ),
              suffixIcon: Container(
                width: 100,
                child: const IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      VerticalDivider(
                        color:  Colors.black,
                        thickness: 0.5,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.filter),
                      ),
                    ],
                  ),
                ),
              )
            ),
            
          ),
        );
  }