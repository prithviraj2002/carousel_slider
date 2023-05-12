import 'package:flutter/material.dart';

import 'image-tile.dart';

class PopularRow extends StatelessWidget {
  List? popularList = [];
  PopularRow({required this.popularList, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, i){
              return Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: ImageTile(
                  title: popularList![i]['title'],
                  thumbnail: popularList![i]['thumbnail'],
                  width: 130,
                  height: 160,
                  rating: 4.0,
                  size: 20,
                ),
              );
            },
            itemCount: popularList!.length
        )
    );
  }
}
