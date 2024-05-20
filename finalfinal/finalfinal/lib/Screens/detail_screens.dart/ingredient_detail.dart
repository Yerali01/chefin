import 'package:flutter/material.dart';

class IngredientDetail extends StatefulWidget {
  final Map<String, dynamic> foods;
  const IngredientDetail({super.key, required this.foods});

  @override
  State<IngredientDetail> createState() => _IngredientDetailState();
}

class _IngredientDetailState extends State<IngredientDetail> {
  List ingredientProperties = [
    "ENERC_KCAL",
    "PROCNT",
    "FAT",
    "CHOCDF",
    "FIBTG",
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.foods['food']['label'],
          style: textTheme.headlineSmall,
        ),
      ),
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: deviceHeight,
              width: 450,
              child: Hero(
                tag: widget.foods['food']['image'],
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(widget.foods['food']['image']),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.foods['food']['label'],
                  style: textTheme.headlineSmall,
                ),
                const SizedBox(height: 15),
                Text(
                  "Category ${widget.foods['food']['category']}",
                  style: const TextStyle(
                    fontSize: 14
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 150,
                  width: deviceWidth - 470,
                  child: ListView.builder(
                    itemBuilder: (context, ingredientIndex) {
                      return Text(
                          "${ingredientIndex + 1} - ${ingredientProperties[ingredientIndex]} : ${widget.foods['food']['nutrients'][ingredientProperties[ingredientIndex]]}");
                    },
                    itemCount: widget.foods['food']['nutrients'].length,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
