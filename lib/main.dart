import 'package:flutter/material.dart';
import 'package:tiktok_clone/screens/home_screen.dart';
import 'package:tiktok_clone/utils/App_colors.dart';

void main() {
  runApp(const InstagramClone());
}

class InstagramClone extends StatelessWidget {
  const InstagramClone({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.textColorDark),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
