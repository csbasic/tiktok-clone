import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/utils/App_colors.dart';
import 'package:tiktok_clone/widgets/app_text.dart';

class CategoryArea extends StatefulWidget {
  const CategoryArea({super.key});

  @override
  State<CategoryArea> createState() => _CategoryAreaState();
}

class _CategoryAreaState extends State<CategoryArea> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 15,
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                  width: 1,
                  color: AppColors.textColorLight.withOpacity(0.1),
                  style: BorderStyle.solid),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 7),
                width: 40,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 1,
                            color: AppColors.textColorDark,
                            style: BorderStyle.solid))),
                child: const Icon(
                  Icons.add_chart_rounded,
                  color: AppColors.textColorDark,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 7),
                child: Icon(
                  Icons.lock_outline_sharp,
                  color: AppColors.textColorLight.withOpacity(0.7),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 7),
                child: Icon(
                  Icons.bookmark_added_outlined,
                  color: AppColors.textColorLight.withOpacity(0.7),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 7),
                child: Icon(
                  Icons.favorite_outline_sharp,
                  color: AppColors.textColorLight.withOpacity(0.7),
                ),
              )
            ],
          ),
        ),
        Container(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1,
                        color: AppColors.textColorLight.withOpacity(0.1),
                        style: BorderStyle.solid))),
            child: SizedBox(
              height: 40,
              width: double.maxFinite,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 5),
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 3),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColors.textColorLight.withOpacity(0.3),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    child: const Center(
                      child: Icon(Icons.add),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 3),
                    height: 40,
                    width: 140,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColors.textColorLight.withOpacity(0.3),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    child: Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.video_collection_outlined,
                              textDirection: TextDirection.ltr,
                            ),
                            AppText(
                              text: 'Metricool team',
                              color: AppColors.textColorDark,
                              weight: FontWeight.w500,
                              size: 14,
                            ),
                          ]),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 3),
                    height: 40,
                    width: 165,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColors.textColorLight.withOpacity(0.3),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.video_collection_outlined,
                            textDirection: TextDirection.ltr,
                          ),
                          AppText(
                            text: 'Tips redes sociales',
                            color: AppColors.textColorDark,
                            weight: FontWeight.w500,
                            size: 14,
                          ),
                        ]),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 3),
                    height: 40,
                    width: 195,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColors.textColorLight.withOpacity(0.3),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.video_collection_outlined,
                            textDirection: TextDirection.ltr,
                          ),
                          AppText(
                            text: 'Tips tracos mancionaire',
                            color: AppColors.textColorDark,
                            weight: FontWeight.w500,
                            size: 14,
                          ),
                        ]),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
