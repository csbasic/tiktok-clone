import 'package:flutter/material.dart';
import 'package:tiktok_clone/screens/components/image_frame.dart';

class PicGridSection extends StatelessWidget {
  const PicGridSection({
    super.key,
    required this.pics,
  });

  final List<String> pics;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: double.maxFinite,
      child: GridView.count(
        childAspectRatio: 0.65,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        crossAxisCount: 3,

        // Generate 100 widgets that display their index in the List.
        children: List.generate(
          pics.length,
          (index) {
            return Container(
                height: 120,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                ),
                child: ImageFrame(imageLink: pics[index]));
          },
        ),
      ),
    );
  }
}
