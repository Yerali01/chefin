import 'package:cached_network_image/cached_network_image.dart';
import 'package:finalfinal/Screens/favourite_screen/favourite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IngredientCard extends StatefulWidget {
  final Map<String, dynamic> foods;
  const IngredientCard(this.foods, {super.key});

  @override
  State<IngredientCard> createState() => _IngredientCardState();
}

class _IngredientCardState extends State<IngredientCard> {
  @override
  void initState() {
    print("FIRST FIRST");
    print(widget.foods);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavouriteProvider>(context);

    return Column(
      children: [
        Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: CachedNetworkImage(
                  imageUrl: widget.foods['food']['image'],
                  fit: BoxFit.cover,
                  errorWidget: (context, error, stackTrace) {
                    return const Icon(
                      Icons.error,
                      color: Colors.red,
                      size: 50,
                    );
                  },
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 60,
              child: InkWell(
                onTap: () {
                  setState(() {
                    favProvider.toggleFavouriteIngredient(widget.foods);
                  });
                },
                child: Icon(
                  favProvider.isIngredientExist(widget.foods)
                      ? Icons.favorite
                      : Icons.favorite_outline,
                  color: Colors.red,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  children: [
                    Text(
                      widget.foods['food']['label'],
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
