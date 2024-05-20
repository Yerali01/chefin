import 'package:cached_network_image/cached_network_image.dart';
import 'package:finalfinal/Screens/favourite_screen/favourite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodCard extends StatefulWidget {
  final Map<String, dynamic> foods;
  const FoodCard(this.foods, {super.key});

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
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
                  imageUrl: widget.foods['recipe']['image'],
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
                    favProvider.toggleFavouriteFood(widget.foods);
                  });
                },
                child: Icon(
                  favProvider.isFoodExist(widget.foods)
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
                      widget.foods['recipe']['label'],
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