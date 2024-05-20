import 'package:flutter/material.dart';

class FavouriteProvider extends ChangeNotifier {
  List _ingredients = [];
  List get ingredients => _ingredients;
  List _foods = [];
  List get foods => _foods;

  void toggleFavouriteIngredient(ingredient) {
    final bool isExisting = _ingredients.contains(ingredient);
    if (isExisting == true) {
      _ingredients.remove(ingredient);
    } else {
      _ingredients.add(ingredient);
    }
    notifyListeners();
  }

  bool isIngredientExist(ingredient) {
    final isEx = _ingredients.contains(ingredient);
    return isEx;
  }

    void toggleFavouriteFood(food) {
    final bool isExisting = _foods.contains(food);
    if (isExisting == true) {
      _foods.remove(food);
    } else {
      _foods.add(food);
    }
    notifyListeners();
  }

  bool isFoodExist(food) {
    final isEx = _foods.contains(food);
    return isEx;
  }

  // void clearFavourite() {
  //   _ingredients = [];
  //   notifyListeners();
  // }
}
