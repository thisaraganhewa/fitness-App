class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool viewIsSelected;

  DietModel(
      {required this.name,
      required this.iconPath,
      required this.level,
      required this.duration,
      required this.calorie,
      required this.viewIsSelected});

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(DietModel(
      name: "Honey Pancake",
      iconPath: "assets/icons/honey_pancake.svg",
      level: "Easy",
      duration: "30mins",
      calorie: "180kCal",
      viewIsSelected: true,
    ));

    

    return diets;

  }
}
