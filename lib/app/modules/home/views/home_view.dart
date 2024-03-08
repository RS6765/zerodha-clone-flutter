import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: HomeController(),
        id: "Home",
        builder: (_) {
          return Scaffold(
            body: SizedBox.expand(
                child: controller.homeViews[controller.index.value]),
            bottomNavigationBar: BottomNavigationBar(
              onTap: (val) => controller.indexChange(val),
              currentIndex: controller.index.value,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Get.theme.primaryColor,
              showUnselectedLabels: true,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark_border), // WatchList icon
                  label: 'WatchList',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.book), // Orders icon
                  label: 'Orders',
                ),
                BottomNavigationBarItem(
                  icon: Icon(FeatherIcons.shoppingBag), // Portfolio icon
                  label: 'Portfolio',
                ),
                BottomNavigationBarItem(
                  icon: Icon(FeatherIcons.airplay), // Bids icon
                  label: 'Bids',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), // Profile icon
                  label: 'Profile',
                ),
              ],
            ),
          );
        });
  }
}
