import 'package:finalfinal/Screens/foods_screen/food_card.dart';
import 'package:finalfinal/edamam/edamam_api_service.dart';
import 'package:flutter/material.dart';
import 'package:finalfinal/Screens/detail_screens.dart/food_detail_screen.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});
  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  List foods = [];

  @override
  void initState() {
    super.initState();
    getFoods();
  }

  getFoods() async {
    final results = await EdamamApiService().getFoods();
    setState(() {
      foods = results.map((recipe) => recipe).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount: foods.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodDetailScreen(
                    foods: foods[index],
                  ),
                ),
              ),
              child: FoodCard(foods[index]),
            );
          },
        ),
      ),
    );
  }
}