import 'package:fitness/components/appBar.dart';
import 'package:fitness/components/searchBar.dart';
import 'package:fitness/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();

}

class _HomeState extends State<Home> {

  List<CategoryModel> categories = [];

  void _getCategories(){

    categories = CategoryModel.getCategories();

  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
