import 'package:flutter/material.dart';

class Ingredients extends StatefulWidget {
  final Map<String, dynamic> foods;
  const Ingredients({required this.foods, super.key});

  @override
  State<Ingredients> createState() => _IngredientsState();
}

class _IngredientsState extends State<Ingredients> {
  List ingredients = [];

  @override
  void initState() {
    getIngredients();
    super.initState();
  }

  getIngredients() {
    setState(() {
      ingredients = widget.foods['recipe']['ingredients'];
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: deviceWidth,
      height: ingredients.length * 60,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ingredients[index]["text"],
              ),
              Text(
                "Its approximate quantity: ${ingredients[index]['quantity']}",
              ),
              Text(
                "Its approximate weight: ${ingredients[index]['weight']} \n",
              ),
            ],
          );
        },
        itemCount: ingredients.length,
      ),
    );
  }
}

class MealInformation extends StatefulWidget {
  final Map<String, dynamic> foods;
  const MealInformation({required this.foods, super.key});

  @override
  State<MealInformation> createState() => _MealInformationState();
}

class _MealInformationState extends State<MealInformation> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
        width: deviceWidth,
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Calories: ${widget.foods['recipe']['calories']}',
            ),
            const SizedBox(height: 5),
            Text(
              'Total weight: ${widget.foods['recipe']['totalWeight']}',
            ),
            const SizedBox(height: 5),
            Text(
              'Cuisine type: ${widget.foods['recipe']['cuisineType']}',
            ),
            const SizedBox(height: 5),
            Text(
              'Meal type: ${widget.foods['recipe']['mealType']}',
            ),
            const SizedBox(height: 5),
            Text(
              'Total CO2 Emissions: ${widget.foods['recipe']['totalCO2Emissions']}',
            ),
          ],
        ));
  }
}

class Nutrients extends StatefulWidget {
  final Map<String, dynamic> foods;
  const Nutrients({required this.foods, super.key});

  @override
  State<Nutrients> createState() => _NutrientsState();
}

class _NutrientsState extends State<Nutrients> {
  Map<String, dynamic> nutrients = {};

  @override
  void initState() {
    getNutrients();
    super.initState();
  }

  getNutrients() {
    setState(() {
      nutrients = widget.foods['recipe']['totalNutrients'];
    });
    Future.delayed(Duration.zero, () {
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: deviceWidth,
      height: nutrients.length * 20,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "${nutrients.keys.elementAt(index)} - ${nutrients.values.elementAt(index)['label']}"),
              Text(
                "Quantity: ${nutrients.values.elementAt(index)['quantity']} gramms \n",
              ),
            ],
          );
        },
        itemCount: nutrients.length,
      ),
    );
  }
}