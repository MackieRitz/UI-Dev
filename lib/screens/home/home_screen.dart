import 'package:flutter/material.dart';
import 'package:esy_labs/components/coustom_bottom_nav_bar.dart';
import 'package:esy_labs/enums.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
