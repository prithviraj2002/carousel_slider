import 'package:flutter/material.dart';
import 'package:passprt_test/widgets/star-rating.dart';

class TileFooter extends StatelessWidget {
  final String title; final double rating, size;
  const TileFooter({required this.title, required this.rating, required this.size, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15
              ),
            ),
            Stars(rating: rating, size: size,)
          ],
        ),
      ),
    );
  }
}
