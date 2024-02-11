import 'package:flutter/material.dart';

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
            body: SizedBox.expand(child: controller.homeViews[controller.index.value]),
            bottomNavigationBar: BottomNavigationBar(
              onTap: (val) => controller.indexChange(val),
              currentIndex: controller.index.value,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Get.theme.primaryColor,
              showUnselectedLabels: true,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: RotatedBox(quarterTurns: 3, child: Icon(Icons.label_important_outline)), // WatchList icon
                  label: 'WatchList',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), // Orders icon
                  label: 'Orders',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_rounded), // Portfolio icon
                  label: 'Portfolio',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.attach_money), // Bids icon
                  label: 'Bids',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle), // Profile icon
                  label: 'Profile',
                ),
              ],
            ),
          );
        });
  }
}
