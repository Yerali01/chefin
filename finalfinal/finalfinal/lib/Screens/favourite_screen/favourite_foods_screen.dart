import 'package:finalfinal/Screens/detail_screens.dart/food_detail_screen.dart';
import 'package:finalfinal/Screens/favourite_screen/favourite_provider.dart';
import 'package:finalfinal/Screens/foods_screen/food_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteFoodsScreen extends StatefulWidget {
  const FavouriteFoodsScreen({super.key});

  @override
  State<FavouriteFoodsScreen> createState() => _FavouriteFoodsScreenState();
}

class _FavouriteFoodsScreenState extends State<FavouriteFoodsScreen> {
  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavouriteProvider>(context);
    List favoriteFoods = favProvider.foods;

    return Scaffold(
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemCount: favoriteFoods.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodDetailScreen(
                      foods: favoriteFoods[index],
                    ),
                  ),
                ),
                // child: SearchRecipeCard(favoriteFoods[index]),
                child: FoodCard(favoriteFoods[index]),
              );
            },
          ),
    );
  }
}
