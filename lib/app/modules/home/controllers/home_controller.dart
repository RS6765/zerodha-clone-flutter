import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:treding/app/modules/home/views/bids_view.dart';
import 'package:treding/app/modules/home/views/watchList_view.dart';
import 'package:treding/app/modules/home/views/orders_view.dart';
import 'package:treding/app/modules/home/views/portfolio_view.dart';
import 'package:treding/app/modules/home/views/profile_view.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final List homeViews = [
    const WatchListView(),
    const OrdersView(),
    const PortfolioView(),
    const BidsView(),
    const ProfileView()
  ];
  List<String> watchListTabs = <String>[
    'Favorites',
    'List',
    'F&O',
    'Finance',
    'Health'
  ];
  List<String> ordersTabs = <String>[
    'Open',
    'Executed',
    'GTT',
    'Baskets',
    'SIPs'
  ];
  List<String> portfolioTabs = <String>[
    'Holdings',
    'Positions',
  ];
  final index = 0.obs;

  //region WatchList
  late TabController tabController;
  TextEditingController searchTEC = TextEditingController();

  //endregion

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 5, vsync: this);
  }



  void indexChange(newIndex) {
    index.value = newIndex;
    update(['Home']);
  }
}
