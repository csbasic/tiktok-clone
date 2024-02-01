import 'package:flutter/material.dart';
import 'package:tiktok_clone/utils/App_colors.dart';
import 'package:tiktok_clone/widgets/app_large_text.dart';

class TopBarSection extends StatelessWidget {
  const TopBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.person_add_alt_1_outlined),
        Row(
          children: [
            AppLargeText(text: 'Metricool ES'),
            const Icon(Icons.all_inclusive_rounded),
            Stack(
              fit: StackFit.loose,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                    ),
                  ),
                ),
                const Positioned(
                    top: -1,
                    left: 22,
                    child: Icon(Icons.circle_sharp,
                        size: 10, color: AppColors.iconColorRed))
              ],
            ),
          ],
        ),
        Icon(Icons.menu)
      ],
    );
  }
}
