import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Column Recommendations(dynamic diets) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Recommendation\nfor Diet",
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
              height: 240,
              //color: Colors.blue,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    width: 210,
                    decoration: BoxDecoration(
                        color: diets[index].boxColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(diets[index].iconPath),
                        Text(
                          diets[index].name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 16
                          ),
                        ),
                        Text(
                          "${diets[index].level} | ${diets[index].duration} | ${diets[index].calorie}",
                          style: const TextStyle(
                            color: Color(0xff7B6F72),
                            fontSize: 13,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 130,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              diets[index].viewIsSelected ? const Color(0xff9DCEFF): Colors.transparent,
                              diets[index].viewIsSelected? const Color(0xff92A3FD): Colors.transparent
                            ]),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(
                            child: Text("View", style: TextStyle(
                              color: diets[index].viewIsSelected ? Colors.white : const Color(0xffC58BF2),
                              fontWeight: FontWeight.w600,
                              fontSize: 14
                            ),),
                          ),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: 25,
                ),
                itemCount: diets.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only( left: 20, right: 20),

              ),
            )
          ],
        );
  }