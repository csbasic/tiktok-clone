import 'package:flutter/material.dart';
import 'package:tiktok_clone/utils/App_colors.dart';
import 'package:tiktok_clone/widgets/app_large_text.dart';
import 'package:tiktok_clone/widgets/app_text.dart';

class ColumnEditSection extends StatelessWidget {
  const ColumnEditSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  AppLargeText(
                    text: '146',
                    size: 16,
                  ),
                  AppText(
                    text: 'Following',
                    size: 12,
                  ),
                ],
              ),
              Column(
                children: [
                  AppLargeText(
                    text: '40,3k',
                    size: 16,
                  ),
                  AppText(
                    text: 'Followers',
                    size: 12,
                  ),
                ],
              ),
              Column(
                children: [
                  AppLargeText(
                    text: '182,6k',
                    size: 16,
                  ),
                  AppText(
                    text: 'Likes',
                    size: 12,
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(
                    color: AppColors.textColorLight.withOpacity(0.3),
                    width: 1,
                    style: BorderStyle.solid),
              ),
              child: Center(
                child: AppText(
                  text: 'Edit Profile',
                  color: AppColors.textColorDark,
                  weight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(width: 5),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(
                    color: AppColors.textColorLight.withOpacity(0.3),
                    width: 1,
                    style: BorderStyle.solid),
              ),
              child: const Center(
                child: Icon(Icons.add_a_photo_outlined),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
