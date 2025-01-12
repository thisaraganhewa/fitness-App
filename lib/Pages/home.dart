import 'package:fitness/components/appBar.dart';
import 'package:fitness/components/categories.dart';
import 'package:fitness/components/popular_diets.dart';
import 'package:fitness/components/recommendations.dart';
import 'package:fitness/components/searchBar.dart';
import 'package:fitness/models/category_model.dart';
import 'package:fitness/models/diet_model.dart';
import 'package:fitness/models/popular_diet_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];
  List<PopularDietModel> popularDiets = [];

  void _getDetails() {
    categories = CategoryModel.getCategories();
    diets = DietModel.getDiets();
    popularDiets = PopularDietModel.getPopularDiets();
  }

  @override
  void initState() {
    _getDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: App_Bar(),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          searchBar(),
          const SizedBox(
            height: 40,
          ),
          Categories(categories),
          const SizedBox(
            height: 40,
          ),
          Recommendations(diets),
          const SizedBox(
            height: 40,
          ),
          PopularDiets(popularDiets),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }

 
}
