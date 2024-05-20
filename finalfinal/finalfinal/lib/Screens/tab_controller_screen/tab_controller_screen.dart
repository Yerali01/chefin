import 'package:finalfinal/Screens/foods_screen/food_screen.dart';
import 'package:finalfinal/Screens/main_screen/ingredient_screen.dart';
import 'package:flutter/material.dart';
import 'package:finalfinal/Screens/favourite_screen/favourite_screen.dart';
import 'package:finalfinal/Screens/search_screen/search_screen.dart';

class TabControllerScreen extends StatefulWidget {
  const TabControllerScreen({super.key});
  
  @override
  State<TabControllerScreen> createState() => _TabControllerScreenState();
}

class _TabControllerScreenState extends State<TabControllerScreen> {
  List<dynamic> favouriteFoods = [];
  // final optionProvider = StateProvider<String>((ref) => options.first);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: DefaultTabController(
              length: 4,
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
                        text: "Ingredients".toUpperCase(),
                      ),
                      Tab(
                        text: "Foods".toUpperCase(),
                      ),
                      Tab(
                        text: "Search Receipts".toUpperCase(),
                      ),
                      Tab(
                        text: "My Favourites".toUpperCase(),
                      ),
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
                        IngredientsScreen(),
                        FoodScreen(),
                        SearchScreen(),
                        FavouriteScreen(),
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
