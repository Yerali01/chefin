import 'package:finalfinal/Screens/favourite_screen/Favourite_ingredients_screen.dart';
import 'package:finalfinal/Screens/favourite_screen/favourite_foods_screen.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  TabBar(
                    isScrollable: true,
                    tabs: [
                      Tab(
                        text: "Favourite Ingredients".toUpperCase()
                      ),
                      Tab(
                        text: "Favourite Foods".toUpperCase()                     ),
                    ],
                    labelColor: Colors.black,
                    indicator: const UnderlineTabIndicator(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 4.0,
                      ),
                      insets: EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                    unselectedLabelColor: Colors.grey,
                  ),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        FavouriteIngredientsScreen(),
                        FavouriteFoodsScreen(),
                      ],
                    ),
                  )
                ],
              ),
            ),
      ),
    );
  }
}