import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Stars extends StatelessWidget {
  final double rating, size;
  const Stars({required this.rating, required this.size, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar(
        ratingWidget: RatingWidget(
            full: const Icon(Icons.star, color: Colors.amber,),
            half: const Icon(Icons.star, color: Colors.white,),
            empty: const Icon(Icons.star, color: Colors.grey,)),
        initialRating: rating,
        minRating: 0,
        maxRating: 5,
        ignoreGestures: true,
        itemSize: size,
        onRatingUpdate: (rating) {}
    );
  }
}

