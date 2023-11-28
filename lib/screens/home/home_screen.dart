import 'package:flutter/material.dart';
import 'package:portfolio/screens/main/main_screen.dart';

import 'components/home_banner.dart';
import 'components/my_projects.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        MyProjects(),
        Services(),
      ],
    );
  }
}
