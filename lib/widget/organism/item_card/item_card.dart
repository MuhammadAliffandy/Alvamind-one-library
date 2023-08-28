import 'package:flutter/material.dart';

import '../../molecule/app_card.dart';

class ItemCard extends StatelessWidget {
  final String image;
  final String stars;
  final String title;
  final String subtitle;
  final double price;
  final Function()? onTapCard;
  final Function()? onTapLikeButton;

  const ItemCard({
    Key? key,
    required this.image,
    required this.stars,
    required this.title,
    required this.subtitle,
    required this.price,
    this.onTapCard,
    this.onTapLikeButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      onTap: onTapCard,
      backgroundImage: image,
      height: 400,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 26),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [],
      ),
    );
  }
}
