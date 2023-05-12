import 'package:flutter/material.dart';

import 'grid-tile-footer.dart';

class ImageTile extends StatelessWidget {
  final String title, thumbnail; final double height, width; final double rating, size;
  const ImageTile({
    required this.title,
    required this.thumbnail,
    required this.height,
    required this.width,
    required this.rating,
    required this.size,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: GridTile(
          footer: TileFooter(
              title: title,
              rating: rating,
              size: size),
          child: Image.network(
            thumbnail,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
