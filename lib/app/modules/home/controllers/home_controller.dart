import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:treding/app/modules/home/views/bids_view.dart';
import 'package:treding/app/modules/home/views/watchList_view.dart';
import 'package:treding/app/modules/home/views/orders_view.dart';
import 'package:treding/app/modules/home/views/portfolio_view.dart';
import 'package:treding/app/modules/home/views/profile_view.dart';

class HomeController extends GetxController
    with GetTickerProviderStateMixin {
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

  List<String> bidsTabs = <String>[
    'Actions',
    'IPO',
    'Govt.Securities',
  ];
  final index = 0.obs;

  //region WatchList
  late TabController watchListTabController;
  late TabController ordersTabController;
  late TabController portfolioTabController;
  late TabController bidTabController;
  TextEditingController searchTEC = TextEditingController();

  //endregion

  @override
  void onInit() {
    super.onInit();
    watchListTabController = TabController(length: 5, vsync: this);
    ordersTabController = TabController(length: 5, vsync: this);
    portfolioTabController = TabController(length: 2, vsync: this);
    bidTabController = TabController(length: 3, vsync: this);
  }



  void indexChange(newIndex) {
    index.value = newIndex;
    update(['Home']);
  }
}
