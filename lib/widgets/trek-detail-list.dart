import 'package:flutter/material.dart';

class DetailsList extends StatelessWidget {
  final List? details;
  const DetailsList({required this.details, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (ctx, i){
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              const Icon(Icons.circle, color: Colors.black, size: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  details![i],
                  style: const TextStyle(fontSize: 17),
                  maxLines: 20,
                ),
              )
            ],
          ),
        );
      },
      itemCount: details!.length,
    );
  }
}
