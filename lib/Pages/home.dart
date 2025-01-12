import 'package:fitness/components/appBar.dart';
import 'package:fitness/components/categories.dart';
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Popular",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: popularDiets[index].boxIsSelected ? Colors.white : Colors.transparent,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow:popularDiets[index].boxIsSelected ? [
                            BoxShadow(
                                color:
                                    const Color(0xff1D1617).withOpacity(0.07),
                                offset: const Offset(0, 10),
                                blurRadius: 40,
                                spreadRadius: 0)
                          ]: []),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(popularDiets[index].iconPath, width: 65, height: 65,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                popularDiets[index].name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 16),
                              ),
                              Text(
                                "${popularDiets[index].level} | ${popularDiets[index].duration} | ${popularDiets[index].calorie}",
                                style: const TextStyle(
                                    color: Color(0xff7B6F72),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: (){},
                            child: SvgPicture.asset(
                              'assets/icons/button.svg',
                              width: 30,
                              height: 30,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 25,
                      ),
                  itemCount: popularDiets.length)
            ],
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
