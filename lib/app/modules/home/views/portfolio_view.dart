import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../widgets/order_stock_list_tile.dart';

class PortfolioView extends GetView<HomeController> {
  const PortfolioView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        id: "Portfolio",
        builder: (con) {
          return Scaffold(
            backgroundColor: const Color(0xFFebebed),
            appBar: AppBar(
              backgroundColor: const Color(0xFFebebed),
              title: const Text('Portfolio'),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_down_outlined,
                        size: 32, color: Colors.black))
              ],
              bottom: TabBar(
                isScrollable: true,
                onTap: (value) {
                  controller.update(["Portfolio"]);
                },
                controller: controller.tabController,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                labelPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                indicatorSize: TabBarIndicatorSize.tab,
                tabAlignment: TabAlignment.start,
                tabs:
                    controller.portfolioTabs.map((e) => Tab(text: e)).toList(),
              ),
            ),
            body: TabBarView(
              controller: controller.tabController,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(24))),
                  child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        // Row for search and filter icons at the first index
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 16,
                                ),
                                IconButton(
                                  icon: const Icon(Icons.search),
                                  onPressed: () {},
                                  visualDensity: const VisualDensity(
                                      horizontal: -4, vertical: -2),
                                ),
                                // Filter icon
                                IconButton(
                                  icon: const Icon(Icons.filter_list),
                                  onPressed: () {},
                                  visualDensity: const VisualDensity(
                                      horizontal: -4, vertical: -2),
                                ),
                              ],
                            ),
                            const Divider(
                              height: 0,
                              color: Colors.grey,
                              thickness: 0.3,
                            )
                          ],
                        );
                      } else {
                        return const OrderStockListTile();
                      }
                    },
                  ),
                ),
                Center(
                  child: Text(
                    controller.portfolioTabs[controller.tabController.index],
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
