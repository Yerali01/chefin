import 'package:finalfinal/Screens/detail_screens.dart/food_detail_screen.dart';
import 'package:finalfinal/Screens/foods_screen/food_card.dart';
import 'package:finalfinal/edamam/edamam_api_service.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  final EdamamApiService _apiService = EdamamApiService();
  List _searchResults = [];

  void _searchRecipes(String query) async {
    final results = await _apiService.searchFoods(query);
    setState(() {
      _searchResults = results.map((recipe) => recipe).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFF1F1F1),
              ),
              child: TextField(
                controller: _searchController,
                cursorColor: Colors.black,
                onSubmitted: (_) => _searchRecipes(_searchController.text),
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: const Color(0xFFE8E5E5),
                  filled: true,
                  hintText: "Enter a food name",
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFFABABAB),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0xFFABABAB),
                    size: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 40,
              width: 130,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.white, 
              ),
              child: ElevatedButton(
                onPressed: () => _searchRecipes(_searchController.text),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  shadowColor: Colors.grey,
                ),
                child: const Text(
                  'Search a Food',
                  style: TextStyle(
                    color: Colors.black
                  ),
                  ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: _searchResults.isNotEmpty
                  ? GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      ),
                      itemCount: _searchResults.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FoodDetailScreen(
                                foods: _searchResults[index],
                              ),
                            ),
                          ),
                          child: FoodCard(_searchResults[index]) 
                        );
                      },
                    )
                  : const Center(child: Text('No recipes found.')),
            ),
          ],
        ),
      ),
    );
  }
}
