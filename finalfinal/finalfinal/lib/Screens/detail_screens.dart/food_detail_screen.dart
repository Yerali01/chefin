import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:finalfinal/Screens/detailelem.dart';

class FoodDetailScreen extends StatefulWidget {
  final Map<String, dynamic> foods;
  const FoodDetailScreen({super.key, required this.foods});

  @override
  State<FoodDetailScreen> createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    TextStyle black3A3A3A16W600 = const TextStyle(
      color: Color(0xFF3A3A3A),
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: 'Roboto',
    );
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.foods['recipe']['label'],
          style: textTheme.headlineSmall,
        ),
      ),
      body: SafeArea(
        child: SlidingUpPanel(
          minHeight: size.height / 2,
          maxHeight: size.height / 1.2,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          parallaxEnabled: true,
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Hero(
                    tag: widget.foods['recipe']['image'],
                    child: Image(
                      height: (size.height / 2) + 60,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      image: NetworkImage(widget.foods['recipe']['image']),
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 20,
                  child: InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: const Icon(
                      Icons.favorite_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          panel: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: deviceHeight,
              width: deviceWidth,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        height: 5,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(
                            0.3,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    Text(
                      widget.foods['recipe']['label'],
                      style: textTheme.headlineSmall,
                    ),
                    Divider(
                      color: Colors.black.withOpacity(0.3),
                    ),
                    Container(
                      child: ExpandablePanel(
                        theme: const ExpandableThemeData(
                          headerAlignment: ExpandablePanelHeaderAlignment.center,
                          tapBodyToExpand: true,
                          tapBodyToCollapse: true,
                          hasIcon: true,
                        ),
                        header: Expandable(
                          collapsed: Text(
                            'Meal Information',
                            style: black3A3A3A16W600,
                            ),
                          expanded: Text('Meal Information', style: black3A3A3A16W600,),
                        ),
                        collapsed: Container(),
                        expanded: MealInformation(foods: widget.foods),
                      ),
                    ),
                    Container(
                      child: ExpandablePanel(
                        theme: const ExpandableThemeData(
                          headerAlignment: ExpandablePanelHeaderAlignment.center,
                          tapBodyToExpand: true,
                          tapBodyToCollapse: true,
                          hasIcon: true,
                        ),
                        header: Expandable(
                          collapsed: Text('Cooking Ingredients',style: black3A3A3A16W600,),
                          expanded: Text('Cooking  Ingredients',style: black3A3A3A16W600,),
                        ),
                        collapsed: Container(),
                        expanded: Ingredients(foods: widget.foods),
                      ),
                    ),
                    Container(
                      child: ExpandablePanel(
                        theme: const ExpandableThemeData(
                          headerAlignment: ExpandablePanelHeaderAlignment.center,
                          tapBodyToExpand: true,
                          tapBodyToCollapse: true,
                          hasIcon: true,
                        ),
                        header: Expandable(
                          collapsed: Text('Nutrients',style: black3A3A3A16W600,),
                          expanded: Text('Nutrients',style: black3A3A3A16W600,),
                        ),
                        collapsed: Container(),
                        expanded: Nutrients(foods: widget.foods),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
