import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:treding/app/modules/home/controllers/home_controller.dart';

import 'bids_action_view.dart';
import 'ipo_listview.dart';


class BidsView extends GetView<HomeController> {
  const BidsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        id: "BidsView",
        init: HomeController(),
        builder: (con) {
          return Scaffold(
            backgroundColor: const Color(0xFFebebed),
            appBar: AppBar(
              backgroundColor: const Color(0xFFebebed),
              title: const Text('Bids'),
              actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down_outlined, size: 32, color: Colors.black))],
              bottom: TabBar(
                isScrollable: true,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                labelPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                indicatorSize: TabBarIndicatorSize.tab,
                // tabAlignment: TabAlignment.start,
                labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                onTap: (value) {
                  controller.update(["BidsView"]);
                },
                controller: controller.bidTabController,
                tabs: controller.bidsTabs.map((e) => Tab(text: e)).toList(),
              ),
            ),
            body: TabBarView(
              controller: controller.bidTabController,
              children: const [
                BidActionsView(),
                IpoView(),
                SecuritiesView(),
              ],
            ),
          );
        });
  }
}

class SecuritiesView extends StatelessWidget {
  const SecuritiesView();

  @override
  Widget build(BuildContext context) {
    return Text("Securities");
  }
}