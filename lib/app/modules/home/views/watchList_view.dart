import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:treding/app/modules/home/controllers/home_controller.dart';

import '../widgets/stock_list_tile.dart';

class WatchListView extends GetView<HomeController> {
  const WatchListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      id: "WatchList",
      init: HomeController(),
      builder: (_) {
        return Scaffold(
          backgroundColor: const Color(0xFFebebed),
          appBar: AppBar(
            backgroundColor: const Color(0xFFebebed),
            title: const Text('WatchList'),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    size: 32,
                    color: Colors.black,
                  ))
            ],
            bottom: TabBar(
              isScrollable: true,
              onTap: (value) {
                controller.update(["WatchList"]);
              },
              controller: controller.tabController,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              labelPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              indicatorSize: TabBarIndicatorSize.tab,
              tabAlignment: TabAlignment.start,
              tabs: controller.watchListTabs.map((e) => Tab(text: e)).toList(),
            ),
          ),
          body: TabBarView(
            controller: controller.tabController,
            children: [
              Container(
                decoration: const BoxDecoration(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.only(top: 30),
                      decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
                      child: ListView.builder(
                        itemCount: 50,
                        itemBuilder: (context, index) {
                          return const StockListTile();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                      child: Container(
                        decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: Colors.white),
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 5, blurRadius: 7, offset: const Offset(0, 3))]),
                          child: Container(
                            decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: Colors.white),
                            child: TextFormField(
                              controller: controller.searchTEC,
                              onChanged: (value) {
                                controller.update(["Favorites"]);
                              },
                              decoration: InputDecoration(
                                hintText: 'Search & Add',
                                border: InputBorder.none,
                                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [Text("${controller.searchTEC.text.length}/50", style: const TextStyle(color: Colors.grey)), const SizedBox(height: 25, child: VerticalDivider()), const Icon(Icons.stacked_bar_chart, color: Colors.grey), const SizedBox(width: 8)],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Text(
                  controller.watchListTabs[controller.tabController.index],
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              Center(
                child: Text(
                  controller.watchListTabs[controller.tabController.index],
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              Center(
                child: Text(
                  controller.watchListTabs[controller.tabController.index],
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              Center(
                child: Text(
                  controller.watchListTabs[controller.tabController.index],
                  style: const TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class FavoriteView extends GetView<HomeController> {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      id: "Favorites",
      builder: (_) {
        return Container(
          decoration: const BoxDecoration(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
          child: Stack(
            children: [
              Positioned(
                width: Get.width,
                top: 30,
                child: const FavoriteList(),
              ),
              Positioned(
                top: 5,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.white,
                    ),
                    child: Container(
                      decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 5, blurRadius: 7, offset: const Offset(0, 3))]),
                      child: Container(
                        decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: Colors.white),
                        child: TextFormField(
                          controller: controller.searchTEC,
                          onChanged: (value) {
                            controller.update(["Favorites"]);
                          },
                          decoration: InputDecoration(
                            hintText: 'Search & Add',
                            border: InputBorder.none,
                            prefixIcon: const Icon(Icons.search, color: Colors.grey),
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [Text("${controller.searchTEC.text.length}/50", style: const TextStyle(color: Colors.grey)), const SizedBox(height: 25, child: VerticalDivider()), const Icon(Icons.stacked_bar_chart, color: Colors.grey), const SizedBox(width: 8)],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class FavoriteList extends GetView<HomeController> {
  const FavoriteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: "FavoritesList",
      builder: (_) {
        return Container(
          height: Get.height - 225,
          width: Get.width,
          padding: const EdgeInsets.only(top: 30),
          decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
          child: ListView.builder(
            itemCount: controller.watchListTabs.length, // Use controller instance to access titles
            itemBuilder: (context, index) {
              return const StockListTile();
            },
          ),
        );
      },
    );
  }
}
