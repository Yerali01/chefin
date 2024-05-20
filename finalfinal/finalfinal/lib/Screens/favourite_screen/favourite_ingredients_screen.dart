
import 'package:finalfinal/Screens/detail_screens.dart/ingredient_detail.dart';
import 'package:flutter/material.dart';
import 'package:finalfinal/Screens/favourite_screen/favourite_provider.dart';
import 'package:finalfinal/Screens/main_screen/ingredient_card.dart';
import 'package:provider/provider.dart';

class FavouriteIngredientsScreen extends StatefulWidget {
  const FavouriteIngredientsScreen({super.key});

  @override
  State<FavouriteIngredientsScreen> createState() => _FavouriteIngredientsScreenState();
}

class _FavouriteIngredientsScreenState extends State<FavouriteIngredientsScreen> {
  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavouriteProvider>(context);
    List favoriteIngredients = favProvider.ingredients;

    return Scaffold(
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemCount: favoriteIngredients.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IngredientDetail(
                      foods: favoriteIngredients[index],
                    ),
                  ),
                ),
                child: IngredientCard(favoriteIngredients[index]),
              );
            },
          ),
    );
  }
}