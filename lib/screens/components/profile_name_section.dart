import 'package:flutter/material.dart';
import 'package:tiktok_clone/utils/App_colors.dart';
import 'package:tiktok_clone/widgets/app_text.dart';

class ProfileNameSection extends StatelessWidget {
  const ProfileNameSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Stack(
          fit: StackFit.loose,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10, top: 20),
              child: SizedBox(
                height: 70,
                width: 50,
                child: Text(
                  "metricool",
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold, height: 1),
                ),
              ),
            ),
            Positioned(
                top: 60,
                left: 30,
                child: Icon(Icons.add_circle,
                    size: 28, color: AppColors.iconColorGreen))
          ],
        ),
        AppText(
          text: '@metricool_com',
          weight: FontWeight.w500,
        )
      ],
    );
  }
}
