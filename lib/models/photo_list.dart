import 'package:flutter/material.dart';

class PhotoList extends StatelessWidget {
  final photos;
  PhotoList({this.photos});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: photos.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            child: Card(
          child: Image.network(photos[index].url),
          elevation: 5,
        ));
      },
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    );
  }
}
