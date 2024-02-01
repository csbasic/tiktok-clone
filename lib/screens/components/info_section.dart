import 'package:flutter/material.dart';
import 'package:tiktok_clone/utils/App_colors.dart';
import 'package:tiktok_clone/widgets/app_text.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: "ANALISIS📈",
                size: 13,
                weight: FontWeight.w500,
              ),
              const SizedBox(width: 5),
              AppText(
                text: "PLANIFICACION📆",
                size: 13,
                weight: FontWeight.w500,
              ),
              const SizedBox(width: 5),
              AppText(
                text: "INFORMES🧾",
                size: 13,
                weight: FontWeight.w500,
              )
            ],
          ),
          AppText(
            text: "ADS💲",
            size: 16,
            weight: FontWeight.w700,
            color: AppColors.textColorDark,
          ),
          AppText(
            text: "👇Comienza GRATIS ahora.",
            size: 13,
            weight: FontWeight.w500,
          ),
          AppText(
            text: "🔗https://mtr.bio/metricool-tiktok",
            size: 13,
            color: AppColors.textColorDark,
            weight: FontWeight.w500,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.feedback_outlined,
                color: Colors.red,
              ),
              const SizedBox(width: 5),
              AppText(
                text: "Q&A",
                size: 16,
                color: AppColors.textColorDark,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
