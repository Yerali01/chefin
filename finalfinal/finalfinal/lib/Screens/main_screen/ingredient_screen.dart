import 'package:finalfinal/Screens/main_screen/ingredient_card.dart';
import 'package:finalfinal/Screens/detail_screens.dart/ingredient_detail.dart';
import 'package:finalfinal/edamam/edamam_api_service.dart';
import 'package:flutter/material.dart';

class IngredientsScreen extends StatefulWidget {
  const IngredientsScreen({super.key});
  @override
  State<IngredientsScreen> createState() => _IngredientsScreenState();
}

class _IngredientsScreenState extends State<IngredientsScreen> {
  List<dynamic> foods = [];

  @override
  void initState() {
    super.initState();
    fetchIngredients('chicken');
  }

  Future<void> fetchIngredients(String foodName) async {
    final service = EdamamApiService();
    foods = await service.getIngredients(foodName, foods);
    setState(() {
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
                  builder: (context) => IngredientDetail(
                    foods: foods[index],
                  ),
                ),
              ),
              child: IngredientCard(foods[index]),
            );
          },
        ),
      ),
    );
  }
}
