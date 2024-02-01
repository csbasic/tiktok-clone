// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class ImageFrame extends StatelessWidget {
  const ImageFrame({
    Key? key,
    required this.imageLink,
  }) : super(key: key);

  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 440,
        width: 20 * 10,
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Image(
          image: Image.asset(
            imageLink,
            height: 70,
          ).image,
          fit: BoxFit.cover,
        ),
      ),
    ]);
  }
}
