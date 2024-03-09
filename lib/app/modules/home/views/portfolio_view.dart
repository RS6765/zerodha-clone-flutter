import 'package:treding/app/file_provider.dart';
import 'package:treding/app/modules/home/views/position_view.dart';
import '../controllers/home_controller.dart';
import 'holdings_view.dart';

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
              actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down_outlined, size: 32, color: Colors.black))],
              bottom: TabBar(
                onTap: (value) {
                  controller.update(["Portfolio"]);
                },
                controller: controller.tabController,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                labelPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                tabs: controller.portfolioTabs.map((e) => Tab(text: e)).toList(),
              ),
            ),
            body: TabBarView(
              controller: controller.tabController,
              children: const [
                HoldingsView(),
                PositionsView(),
              ],
            ),
          );
        });
  }
}

