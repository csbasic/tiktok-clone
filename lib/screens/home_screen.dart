import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/screens/components/category_area.dart';
import 'package:tiktok_clone/screens/components/column_edit_section.dart';
import 'package:tiktok_clone/screens/components/image_frame.dart';
import 'package:tiktok_clone/screens/components/info_section.dart';
import 'package:tiktok_clone/screens/components/picgrid_section.dart';
import 'package:tiktok_clone/screens/components/profile_name_section.dart';
import 'package:tiktok_clone/screens/components/topbar_section.dart';
import 'package:tiktok_clone/utils/App_colors.dart';
import 'package:tiktok_clone/widgets/app_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> pics = [
    "assets/images/pic1.jpg",
    "assets/images/pic2.jpg",
    "assets/images/pic3.jpg",
    "assets/images/pic4.jpg",
    "assets/images/pic5.jpg",
    "assets/images/pic6.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: TabBarView(
          children: [
            SafeArea(child: Center(child: AppText(text: 'Home Screen'))),
            SafeArea(child: Center(child: AppText(text: 'Friends Screen'))),
            SafeArea(child: Center(child: AppText(text: 'Add Video Screen'))),
            SafeArea(child: Center(child: AppText(text: 'Inbox Screen'))),
            SafeArea(
              child: Column(
                children: [
                  /** Top Bar Area */
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 3),
                    child: TopBarSection(),
                  ),
                  const ProfileNameSection(),
                  const ColumnEditSection(),
                  const InfoSection(),
                  const CategoryArea(),
                  PicGridSection(pics: pics),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(top: 7),
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
                color: AppColors.textColorLight,
                spreadRadius: 1,
                offset: const Offset(0, 0),
                blurRadius: 5,
                blurStyle: BlurStyle.outer)
          ], color: AppColors.backgroundWhite),
          height: 50,
          child: TabBar(
              key: UniqueKey(),
              unselectedLabelColor: AppColors.textColorLight,
              labelStyle: const TextStyle(fontSize: 10),
              indicatorWeight: 0.1,
              indicatorColor: AppColors.backgroundWhite,
              labelColor: AppColors.textColorDark,
              labelPadding: const EdgeInsets.all(0),
              splashFactory: NoSplash.splashFactory,
              tabs: [
                Tab(
                  key: UniqueKey(),
                  iconMargin: const EdgeInsets.only(top: 2),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons/home.png',
                        // scale: 0.5,
                        height: 22,
                        width: 22,
                      ),
                      AppText(text: 'Home', size: 10)
                    ],
                  ),
                ),
                Tab(
                  key: UniqueKey(),
                  iconMargin: const EdgeInsets.only(top: 2),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons/friends.png',
                        // scale: 0.5,
                        height: 22,
                        width: 22,
                      ),
                      AppText(text: 'Friends', size: 10)
                    ],
                  ),
                ),
                Tab(
                  key: UniqueKey(),
                  iconMargin: EdgeInsets.only(top: 2),
                  // text: "Profile",
                  // icon: Icon(Icons.add_to_queue_rounded, size: 36),
                  child: Image.asset(
                    'assets/icons/add.png',
                    // scale: 0.5,
                    height: 70,
                    width: 60,
                  ),
                ),
                Tab(
                  key: UniqueKey(),
                  iconMargin: const EdgeInsets.only(top: 2),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons/inbox.png',
                        // scale: 0.5,
                        height: 22,
                        width: 22,
                      ),
                      AppText(text: 'Inbox', size: 10)
                    ],
                  ),
                ),
                Tab(
                  key: UniqueKey(),
                  iconMargin: const EdgeInsets.only(top: 2),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons/profile.png',
                        // scale: 0.5,
                        height: 22,
                        width: 20,
                      ),
                      AppText(text: 'Profile', size: 10)
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
